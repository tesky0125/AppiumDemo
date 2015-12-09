.class public Lio/selendroid/testapp/VerifyUserActivity;
.super Landroid/app/Activity;
.source "VerifyUserActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private con:Landroid/content/ServiceConnection;

.field private userService:Lio/selendroid/testapp/services/UserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "NativeAndroidDriver-demoapp"

    sput-object v0, Lio/selendroid/testapp/VerifyUserActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lio/selendroid/testapp/VerifyUserActivity;->userService:Lio/selendroid/testapp/services/UserService;

    .line 39
    new-instance v0, Lio/selendroid/testapp/utils/MyServiceConection;

    invoke-direct {v0}, Lio/selendroid/testapp/utils/MyServiceConection;-><init>()V

    iput-object v0, p0, Lio/selendroid/testapp/VerifyUserActivity;->con:Landroid/content/ServiceConnection;

    return-void
.end method

.method private setTextOfUiElement(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "uiId"

    .prologue
    .line 62
    invoke-virtual {p0, p2}, Lio/selendroid/testapp/VerifyUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object v2, Lio/selendroid/testapp/VerifyUserActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lio/selendroid/testapp/VerifyUserActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lio/selendroid/testapp/VerifyUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 49
    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lio/selendroid/testapp/domain/User;

    .line 50
    .local v1, user:Lio/selendroid/testapp/domain/User;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " the user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lio/selendroid/testapp/domain/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070034

    invoke-direct {p0, v2, v3}, Lio/selendroid/testapp/VerifyUserActivity;->setTextOfUiElement(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v1}, Lio/selendroid/testapp/domain/User;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07002c

    invoke-direct {p0, v2, v3}, Lio/selendroid/testapp/VerifyUserActivity;->setTextOfUiElement(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v1}, Lio/selendroid/testapp/domain/User;->getPassword()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070031

    invoke-direct {p0, v2, v3}, Lio/selendroid/testapp/VerifyUserActivity;->setTextOfUiElement(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1}, Lio/selendroid/testapp/domain/User;->getPreferedProgrammingLanguge()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070037

    invoke-direct {p0, v2, v3}, Lio/selendroid/testapp/VerifyUserActivity;->setTextOfUiElement(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v1}, Lio/selendroid/testapp/domain/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07002e

    invoke-direct {p0, v2, v3}, Lio/selendroid/testapp/VerifyUserActivity;->setTextOfUiElement(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v1}, Lio/selendroid/testapp/domain/User;->isAcceptAdds()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07003a

    invoke-direct {p0, v2, v3}, Lio/selendroid/testapp/VerifyUserActivity;->setTextOfUiElement(Ljava/lang/String;I)V

    .line 59
    .end local v1           #user:Lio/selendroid/testapp/domain/User;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lio/selendroid/testapp/VerifyUserActivity;->con:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lio/selendroid/testapp/VerifyUserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/selendroid/testapp/services/impl/UserServiceImpl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lio/selendroid/testapp/VerifyUserActivity;->con:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/selendroid/testapp/VerifyUserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    return-void
.end method

.method public registerUserAfterVerificytion(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/selendroid/testapp/VerifyUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, nextScreen:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/selendroid/testapp/VerifyUserActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
