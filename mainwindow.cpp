#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
    #include <QDebug>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    qDebug() << QSqlDatabase::drivers ();

        QSqlDatabase db_ = QSqlDatabase::addDatabase("QIBASE");
        db_.setHostName("localhost");
        db_.setDatabaseName("c:/test.fdb");
        db_.setUserName("SYSDBA");
        db_.setPassword("masterkey");

        if (!db_.open())
        {
            qDebug() << db_.lastError().text();
            return ;
        }
         db_.exec("CREATE TABLE YahoooItsWORK(GQUANT INTEGER);");
            qDebug() << db_.lastError().text();
        qDebug() << db_.tables();
}

MainWindow::~MainWindow()
{
    delete ui;
}
