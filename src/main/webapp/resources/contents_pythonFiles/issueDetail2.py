# -*- coding: utf-8 -*-
import sys
sys.path.append("C:\\Users\\true0\\anaconda3\\envs\\py27\\lib\\site-packages")
# sys.path.append("D:\\devtools\\python-3.8.5\\Lib\\site-packages")
import requests
import re
import json
from bs4 import BeautifulSoup

headers = {"User-Agent" : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36"}

def issueDetail(url):
    print("issueDetail run..." + url)

    requests.packages.urllib3.disable_warnings()
    res = requests.get(url, headers=headers, verify=False)
    res.raise_for_status()

    soup = BeautifulSoup(res.text)

    # title : <h3 class="tit_headline">엄마가 아들 팔의 점을 보고 오열한 이유</h3>
    # readcount : <span class="txt_num">1,262,949</span>
    thumbnail_div = soup.find("div", attrs={"class" : "inner_image"})

    if(thumbnail_div) : 
        thumbnail = thumbnail_div.find("img", attrs={"class" : "img_thumb"})['src']
    else :
        thumbnail_div2 = soup.findAll("div", attrs={"class" : "compos_section image_view compos_image"})[0]
        thumbnail = thumbnail_div2.find("img", attrs={"class" : "img_thumb"})['src']


    partner_div = soup.find("div", attrs={"class" : "inner_headline"})
    partnerName = partner_div.find("strong", attrs={"class" : "txt_name"}).get_text().strip()
    partnerImg = partner_div.find("img", attrs={"class" : "img_thumb"})['src']
    title = soup.find("h3", attrs={"class" : "tit_headline"}).get_text().strip()
    readcount = int(soup.find("span", attrs={"class":"txt_num"}).get_text().strip().replace(',',''))
    date = soup.find("span", attrs={"class":"txt_date"}).get_text().strip()
    content = str(soup.find("div", attrs={"id":"mainArticles"}))

    # json에 담기
    jsonData = json.dumps({"partnerName" : partnerName, "partnerImg" : partnerImg, "url" : url, "title" : title, "thumbnail" : thumbnail, "readcount" : readcount, "date" : date, "content" : content})

    return jsonData
