oid MainWindow::metod(QString komut){
    ui->listWidget->clear();
    QProcess proc ;

    proc.start("bash", QStringList() << "-c" << "ls  "+komut+" > hello.txt");
    proc.waitForBytesWritten();

    proc.waitForFinished();
    QByteArray output = proc.readAll();
    proc.close();

    QFile file("hello.txt");
    if (file.open(QIODevice::ReadOnly))
    {
            QTextStream in(&file);

       while (!in.atEnd())
       {

            QString line = in.readLine();
            if(line =="hello.txt")continue;
          ui->listWidget->addItem(line);

       }
        file.close();
    }


