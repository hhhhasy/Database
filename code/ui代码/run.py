
import start
from PyQt5.QtWidgets import QMainWindow,QApplication
from PyQt5 import QtWidgets

import sys
import pymysql
import  signin

import  trainsearch
import  information
from ui代码 import admin, fh, fixhuoche, fixinfor, list, log, my, page
from qt_material import apply_stylesheet

# Open database connection
db=pymysql.connect(host='localhost',user='root',password='Aaa041082',db='train')

# prepare a cursor object using cursor() method
cursor = db.cursor()




def trans(a,b):
    a.close()
    b.show()
def pmtrans(m,mui,p,me,db,iui,inforui):
    mui.setupUi(m,me)
    mui.pushButton.clicked.connect(lambda: trans(m, p))
    mui.pushButton_2.clicked.connect(lambda :mftrans(m,iui,inforui,me,db))
    p.close()
    m.show()

def mftrans(ui1,ui2,inforui,me,db):
    inforui.setupUi(ui2, db, me)
    inforui.pushButton_2.clicked.connect(lambda :trans(ui2,ui1))
    ui1.close()
    ui2.show()







app = QApplication(sys.argv)

me= information.my_information()
"""开始"""

st=QtWidgets.QWidget()
stui= log.Ui_Form()
stui.setupUi(st)


apply_stylesheet(app, theme='light_purple.xml', invert_secondary=True)
st.show()

"""登录界面"""
s=QMainWindow()
sui= start.Ui_MainWindow()
sui.setupUi(s,db,me)
stui.pushButton.clicked.connect(lambda :trans(st,s))


"""注册界面"""
log=QMainWindow()
lui= signin.Ui_MainWindow()
lui.setupUi(log,db)
sui.pushButton_3.clicked.connect(lambda :trans(s,log))


"""注册之后返回开始界面"""

lui.pushButton.clicked.connect(lambda :trans(log,s))
lui.pushButton_2.clicked.connect(lambda :trans(log,s))


"""主界面"""
p=QtWidgets.QWidget()
pui= page.Ui_Form()
pui.setupUi(p,db)

#page=QMainWindow()
#pui=pp.Ui_MainWindow()
#pui.setupUi(page,db)
sui.pushButton.clicked.connect(lambda :sui.trans(s,p,a,db,me,pui))

"""查询结果"""
rs=QMainWindow()
rui= trainsearch.Ui_MainWindow()
rui.setupUi(rs)

"""我的信息"""
m = QMainWindow()
mui = my.Ui_MainWindow()


'''增加火车'''
f=QMainWindow()
fhui= fixhuoche.Ui_MainWindow()
fhui.setupUi(f,db)
fhui.pushButton_2.clicked.connect(lambda :trans(f,a))

'''修改火车信息'''
ch=QMainWindow()
chui= fh.Ui_MainWindow()



"""管理员"""
a=QMainWindow()
aui= admin.Ui_MainWindow()
aui.setupUi(a,db,a,f,ch,chui)
aui.pushButton.clicked.connect(lambda :trans(a,s))

'''修改信息'''
infor=QMainWindow()
inforui= fixinfor.Ui_MainWindow()

pui.pushButton_3.clicked.connect(lambda :pmtrans(m,mui,p,me,db,infor,inforui))
def pltrans(l,Lui,p,me,db,pui):
    me.L=pui.L
    Lui.setupUi(l,me,db)
    Lui.pushButton.clicked.connect(lambda :trans(l,p))
    p.close()
    l.show()

l=QMainWindow()
Lui= list.Ui_MainWindow()
pui.pushButton.clicked.connect(lambda :pltrans(l,Lui,p,me,db,pui))
sys.exit(app.exec_())

