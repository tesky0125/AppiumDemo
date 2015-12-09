.class public Lio/selendroid/testapp/RegisterUserActivity;
.super Landroid/app/Activity;
.source "RegisterUserActivity.java"


# static fields
.field private static final DIALOG_ALERT:I = 0xb

.field private static TAG:Ljava/lang/String;


# instance fields
.field private con:Landroid/content/ServiceConnection;

.field private userService:Lio/selendroid/testapp/services/UserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "selendroid-demoapp"

    sput-object v0, Lio/selendroid/testapp/RegisterUserActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lio/selendroid/testapp/RegisterUserActivity;->userService:Lio/selendroid/testapp/services/UserService;

    .line 48
    new-instance v0, Lio/selendroid/testapp/utils/MyServiceConection;

    invoke-direct {v0}, Lio/selendroid/testapp/utils/MyServiceConection;-><init>()V

    iput-object v0, p0, Lio/selendroid/testapp/RegisterUserActivity;->con:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object v0, Lio/selendroid/testapp/RegisterUserActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/RegisterUserActivity;->setContentView(I)V

    .line 55
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 133
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Personal data will be stored to improve the product.\n\nDo you agree?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 136
    const-string v2, "I don\'t"

    new-instance v3, Lio/selendroid/testapp/RegisterUserActivity$1;

    invoke-direct {v3, p0}, Lio/selendroid/testapp/RegisterUserActivity$1;-><init>(Lio/selendroid/testapp/RegisterUserActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    const-string v2, "I agree"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 144
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 59
    invoke-virtual {p0}, Lio/selendroid/testapp/RegisterUserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 60
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f030001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 61
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/RegisterUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/RegisterUserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/RegisterUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/selendroid/testapp/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/RegisterUserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/RegisterUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/selendroid/testapp/MultipleWebViewsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/RegisterUserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :pswitch_3
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lio/selendroid/testapp/RegisterUserActivity;->showDialog(I)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f070011
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/selendroid/testapp/RegisterUserActivity;->con:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/RegisterUserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/selendroid/testapp/services/impl/UserServiceImpl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lio/selendroid/testapp/RegisterUserActivity;->con:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/selendroid/testapp/RegisterUserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    return-void
.end method

.method public registerUser(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    .line 103
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/RegisterUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lio/selendroid/testapp/VerifyUserActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v3, nextScreen:Landroid/content/Intent;
    const v8, 0x7f07001f

    invoke-virtual {p0, v8}, Lio/selendroid/testapp/RegisterUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, username:Ljava/lang/String;
    const v8, 0x7f070020

    invoke-virtual {p0, v8}, Lio/selendroid/testapp/RegisterUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, email:Ljava/lang/String;
    const v8, 0x7f070021

    invoke-virtual {p0, v8}, Lio/selendroid/testapp/RegisterUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, password:Ljava/lang/String;
    const v8, 0x7f070022

    invoke-virtual {p0, v8}, Lio/selendroid/testapp/RegisterUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, name:Ljava/lang/String;
    const v8, 0x7f070024

    invoke-virtual {p0, v8}, Lio/selendroid/testapp/RegisterUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 114
    .local v0, acceptAdds:Z
    const v8, 0x7f070023

    invoke-virtual {p0, v8}, Lio/selendroid/testapp/RegisterUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, preferedProgrammingLanguge:Ljava/lang/String;
    new-instance v6, Lio/selendroid/testapp/domain/User;

    invoke-direct {v6, v7, v4}, Lio/selendroid/testapp/domain/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v6, user:Lio/selendroid/testapp/domain/User;
    invoke-virtual {v6, v1}, Lio/selendroid/testapp/domain/User;->setEmail(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6, v2}, Lio/selendroid/testapp/domain/User;->setName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6, v0}, Lio/selendroid/testapp/domain/User;->setAcceptAdds(Z)V

    .line 122
    invoke-virtual {v6, v5}, Lio/selendroid/testapp/domain/User;->setPreferedProgrammingLanguge(Ljava/lang/String;)V

    .line 124
    const-string v8, "user"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v3}, Lio/selendroid/testapp/RegisterUserActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method
