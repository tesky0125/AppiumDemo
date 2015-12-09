.class public Lio/selendroid/testapp/services/impl/UserServiceImpl;
.super Landroid/app/Service;
.source "UserServiceImpl.java"

# interfaces
.implements Lio/selendroid/testapp/services/UserService;


# instance fields
.field private users:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/selendroid/testapp/domain/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/selendroid/testapp/services/impl/UserServiceImpl;->users:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerUser(Lio/selendroid/testapp/domain/User;)Lio/selendroid/testapp/domain/User;
    .locals 2
    .parameter "userToRegister"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lio/selendroid/testapp/services/impl/UserServiceImpl;->validateUser(Lio/selendroid/testapp/domain/User;)V

    .line 61
    iget-object v0, p0, Lio/selendroid/testapp/services/impl/UserServiceImpl;->users:Ljava/util/Map;

    invoke-virtual {p1}, Lio/selendroid/testapp/domain/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object p1
.end method

.method public signUserIn(Ljava/lang/String;Ljava/lang/String;)Lio/selendroid/testapp/domain/User;
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid parameter"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1
    iget-object v1, p0, Lio/selendroid/testapp/services/impl/UserServiceImpl;->users:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lio/selendroid/testapp/services/impl/UserServiceImpl;->users:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/selendroid/testapp/domain/User;

    .line 48
    .local v0, user:Lio/selendroid/testapp/domain/User;
    invoke-virtual {v0}, Lio/selendroid/testapp/domain/User;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    return-object v0

    .line 52
    .end local v0           #user:Lio/selendroid/testapp/domain/User;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "User does not exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public validateUser(Lio/selendroid/testapp/domain/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lio/selendroid/testapp/domain/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "email empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lio/selendroid/testapp/domain/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "username empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    return-void
.end method
