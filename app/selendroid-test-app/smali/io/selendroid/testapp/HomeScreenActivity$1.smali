.class Lio/selendroid/testapp/HomeScreenActivity$1;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/selendroid/testapp/HomeScreenActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 63
    iput-object p1, p0, Lio/selendroid/testapp/HomeScreenActivity$1;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lio/selendroid/testapp/HomeScreenActivity$1;->this$0:Lio/selendroid/testapp/HomeScreenActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lio/selendroid/testapp/HomeScreenActivity;->showDialog(I)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
