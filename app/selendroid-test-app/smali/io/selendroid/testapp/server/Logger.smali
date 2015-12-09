.class public Lio/selendroid/testapp/server/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Selendroid-testapp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 22
    const-string v0, "Selendroid-testapp"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "message"
    .parameter "e"

    .prologue
    .line 26
    const-string v0, "Selendroid-testapp"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    return-void
.end method
