.class public Lio/selendroid/testapp/SearchUsersActivity;
.super Landroid/app/Activity;
.source "SearchUsersActivity.java"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    return-void
.end method

.method private showResults(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 65
    const-string v0, "cars"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "Volkswagen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "Mercedes Benz"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "BMW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "Porsche"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "Tesla"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "phones"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "Nexus 4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "Galaxy Nexus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    const-string v1, "Galaxy 7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lio/selendroid/testapp/SearchUsersActivity;->setContentView(I)V

    .line 37
    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lio/selendroid/testapp/SearchUsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lio/selendroid/testapp/SearchUsersActivity;->mListView:Landroid/widget/ListView;

    .line 38
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    const v4, 0x1020014

    iget-object v5, p0, Lio/selendroid/testapp/SearchUsersActivity;->results:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 41
    .local v2, words:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lio/selendroid/testapp/SearchUsersActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    invoke-virtual {p0}, Lio/selendroid/testapp/SearchUsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, query:Ljava/lang/String;
    invoke-direct {p0, v1}, Lio/selendroid/testapp/SearchUsersActivity;->showResults(Ljava/lang/String;)V

    .line 49
    .end local v1           #query:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lio/selendroid/testapp/SearchUsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, query:Ljava/lang/String;
    invoke-direct {p0, v1}, Lio/selendroid/testapp/SearchUsersActivity;->showResults(Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v2

    return v2
.end method
