.class Lio/selendroid/testapp/HomeScreenActivity$3;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/selendroid/testapp/HomeScreenActivity;->initExceptionTestButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/selendroid/testapp/HomeScreenActivity;


# direct methods
.method constructor <init>(Lio/selendroid/testapp/HomeScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lio/selendroid/testapp/HomeScreenActivity$3;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unhandled Exception Test!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
