#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "smallboy.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    SmallBoy sl;
}

MainWindow::~MainWindow()
{
    delete ui;
}

