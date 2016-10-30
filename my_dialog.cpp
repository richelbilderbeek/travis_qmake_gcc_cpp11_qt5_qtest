#include "my_dialog.h"
#include "ui_my_dialog.h"

my_dialog::my_dialog(QWidget *parent) noexcept :
  QDialog(parent),
  ui(new Ui::my_dialog)
{
  ui->setupUi(this);
  connect(ui->pushButton, SIGNAL(clicked()), this, SLOT(close()));
}

my_dialog::~my_dialog() noexcept
{
  delete ui;
}
