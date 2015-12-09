.class public Lio/selendroid/testapp/domain/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12f41c99e117d2e5L


# instance fields
.field private acceptAdds:Z

.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private preferedProgrammingLanguge:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 38
    check-cast v0, Lio/selendroid/testapp/domain/User;

    .line 39
    .local v0, other:Lio/selendroid/testapp/domain/User;
    iget-object v3, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 40
    iget-object v3, v0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 41
    :cond_4
    iget-object v3, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    iget-object v4, v0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 42
    :cond_5
    iget-object v3, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 43
    iget-object v3, v0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 44
    :cond_6
    iget-object v3, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    iget-object v4, v0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lio/selendroid/testapp/domain/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/selendroid/testapp/domain/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferedProgrammingLanguge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/selendroid/testapp/domain/User;->preferedProgrammingLanguge:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 70
    const/16 v0, 0x1f

    .line 71
    .local v0, prime:I
    const/4 v1, 0x1

    .line 72
    .local v1, result:I
    iget-object v2, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 73
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 74
    return v1

    .line 72
    :cond_0
    iget-object v2, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isAcceptAdds()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lio/selendroid/testapp/domain/User;->acceptAdds:Z

    return v0
.end method

.method public setAcceptAdds(Z)V
    .locals 0
    .parameter "acceptAdds"

    .prologue
    .line 82
    iput-boolean p1, p0, Lio/selendroid/testapp/domain/User;->acceptAdds:Z

    .line 83
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 86
    iput-object p1, p0, Lio/selendroid/testapp/domain/User;->email:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 90
    iput-object p1, p0, Lio/selendroid/testapp/domain/User;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 94
    iput-object p1, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPreferedProgrammingLanguge(Ljava/lang/String;)V
    .locals 0
    .parameter "preferedProgrammingLanguge"

    .prologue
    .line 98
    iput-object p1, p0, Lio/selendroid/testapp/domain/User;->preferedProgrammingLanguge:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 102
    iput-object p1, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/selendroid/testapp/domain/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/selendroid/testapp/domain/User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/selendroid/testapp/domain/User;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/selendroid/testapp/domain/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferedProgrammingLanguge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/selendroid/testapp/domain/User;->preferedProgrammingLanguge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acceptAdds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/selendroid/testapp/domain/User;->acceptAdds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
