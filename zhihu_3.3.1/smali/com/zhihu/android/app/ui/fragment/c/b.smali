.class public Lcom/zhihu/android/app/ui/fragment/c/b;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "InboxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/ConversationList;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private m:Lcom/zhihu/android/api/b/r;

.field private n:Lcom/zhihu/android/app/util/FabScrollHelper;

.field private o:Lcom/zhihu/android/bumblebee/http/e;

.field private p:Lio/realm/k;

.field private q:Lio/realm/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/t",
            "<",
            "Lcom/zhihu/android/app/draft/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/view/MenuItem;

.field private s:Lcom/zhihu/android/app/ui/widget/b/d;

.field private t:Lio/realm/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    .line 434
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/c/b$7;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/c/b$7;-><init>(Lcom/zhihu/android/app/ui/fragment/c/b;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->t:Lio/realm/m;

    return-void
.end method

.method private B()V
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/search/b;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 329
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/b;)Lcom/zhihu/android/app/util/FabScrollHelper;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->n:Lcom/zhihu/android/app/util/FabScrollHelper;

    return-object v0
.end method

.method private a(Lcom/zhihu/android/api/model/Conversation;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;
    .locals 1
    .parameter

    .prologue
    .line 294
    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Conversation;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/b;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/c/b;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/c/b;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/c/b;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/c/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/c/b;)Lio/realm/t;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->q:Lio/realm/t;

    return-object v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/c/b;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/b;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/c/b;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/c/b;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->B()V

    return-void
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/c/b;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method public static u()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/c/b;

    const/4 v2, 0x0

    const-string v3, "inbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 100
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 208
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 122
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4180

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    .line 123
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    const/16 v3, 0x55

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 126
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 128
    if-eqz v0, :cond_0

    .line 129
    const v1, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    .line 130
    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v1, p0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v2, Lcom/zhihu/android/app/util/FabScrollHelper;

    invoke-direct {v2, v1}, Lcom/zhihu/android/app/util/FabScrollHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->n:Lcom/zhihu/android/app/util/FabScrollHelper;

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 137
    :cond_0
    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/ConversationList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/ConversationList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/ConversationList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p1, Lcom/zhihu/android/api/model/ConversationList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Conversation;

    .line 287
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/api/model/Conversation;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 3
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->m:Lcom/zhihu/android/api/b/r;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextAfterId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/c/b$4;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/c/b$4;-><init>(Lcom/zhihu/android/app/ui/fragment/c/b;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/r;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->o:Lcom/zhihu/android/bumblebee/http/e;

    .line 279
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 196
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    const v1, 0x7f0903a4

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(I)V

    .line 197
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->m:Lcom/zhihu/android/api/b/r;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/b$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/b$3;-><init>(Lcom/zhihu/android/app/ui/fragment/c/b;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/r;->a(Lcom/zhihu/android/bumblebee/b/a;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->o:Lcom/zhihu/android/bumblebee/http/e;

    .line 262
    return-void
.end method

.method public answerConversationChange(Lcom/zhihu/android/api/model/Conversation;)V
    .locals 6
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->g()Ljava/util/List;

    move-result-object v2

    .line 407
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 408
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v1

    .line 410
    instance-of v4, v1, Lcom/zhihu/android/api/model/Conversation;

    if-eqz v4, :cond_0

    .line 411
    check-cast v1, Lcom/zhihu/android/api/model/Conversation;

    .line 413
    invoke-virtual {v1, p1}, Lcom/zhihu/android/api/model/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    iget-object v3, p1, Lcom/zhihu/android/api/model/Conversation;->snippet:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 416
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 432
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v3, p1, Lcom/zhihu/android/api/model/Conversation;->snippet:Ljava/lang/String;

    iput-object v3, v1, Lcom/zhihu/android/api/model/Conversation;->snippet:Ljava/lang/String;

    .line 419
    iget-wide v4, p1, Lcom/zhihu/android/api/model/Conversation;->updatedTime:J

    iput-wide v4, v1, Lcom/zhihu/android/api/model/Conversation;->updatedTime:J

    .line 420
    iget-boolean v3, p1, Lcom/zhihu/android/api/model/Conversation;->isReplied:Z

    iput-boolean v3, v1, Lcom/zhihu/android/api/model/Conversation;->isReplied:Z

    .line 422
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->d(I)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/api/model/Conversation;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 213
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/v;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/widget/adapter/v;-><init>()V

    .line 214
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/c/b$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/c/b$2;-><init>(Lcom/zhihu/android/app/ui/fragment/c/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$a;)V

    .line 229
    return-object v0
.end method

.method protected c(Z)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;
    .locals 6
    .parameter

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    new-instance v0, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;

    const v1, 0x7f09034d

    const v2, 0x7f01004a

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->j()I

    move-result v3

    const v4, 0x7f09034f

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/c/b$5;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/c/b$5;-><init>(Lcom/zhihu/android/app/ui/fragment/c/b;)V

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;-><init>(IIIILandroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;

    const v1, 0x7f0901fa

    const v2, 0x7f010049

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->j()I

    move-result v3

    const v4, 0x7f0901f1

    new-instance v5, Lcom/zhihu/android/app/ui/fragment/c/b$6;

    invoke-direct {v5, p0}, Lcom/zhihu/android/app/ui/fragment/c/b$6;-><init>(Lcom/zhihu/android/app/ui/fragment/c/b;)V

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;-><init>(IIIILandroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/app/ui/widget/holder/EmptyViewHolder$a;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 85
    check-cast p1, Lcom/zhihu/android/api/model/ConversationList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/api/model/ConversationList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 203
    const-string v0, "Inbox"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 299
    instance-of v0, p1, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionButton;

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->B()V

    .line 302
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/b;->d(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/b/r;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/r;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->m:Lcom/zhihu/android/api/b/r;

    .line 110
    invoke-static {}, Lcom/zhihu/android/app/push/b;->a()Lcom/zhihu/android/app/push/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/push/b;->b(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    .line 114
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/d/k;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v1, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 373
    const v0, 0x7f110014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 374
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onDestroyView()V

    .line 182
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->o:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->o:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 186
    :cond_0
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->q:Lio/realm/t;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->t:Lio/realm/m;

    invoke-virtual {v0, v1}, Lio/realm/t;->b(Lio/realm/m;)V

    .line 189
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->p:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->close()V

    .line 190
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .parameter

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onHiddenChanged(Z)V

    .line 357
    if-nez p1, :cond_1

    .line 358
    invoke-static {}, Lcom/zhihu/android/app/push/b;->a()Lcom/zhihu/android/app/push/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/push/b;->b(Landroid/content/Context;)V

    .line 359
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 360
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    .line 361
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/d/k;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v1, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->h()V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->s:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->s:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->s:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 378
    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 387
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 390
    :goto_0
    return v0

    .line 381
    :pswitch_0
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 389
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 390
    const/4 v0, 0x1

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/k/g;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x7f100283
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 340
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onPause()V

    .line 341
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 396
    const v0, 0x7f100284

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->r:Landroid/view/MenuItem;

    .line 397
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->r:Landroid/view/MenuItem;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/b/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->s:Lcom/zhihu/android/app/ui/widget/b/d;

    .line 400
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->r:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->s:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 401
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 345
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onResume()V

    .line 346
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 348
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    .line 349
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/d/k;

    invoke-direct {v2, v0}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v1, v2}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 352
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Lcom/zhihu/android/app/ui/widget/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/ui/widget/c;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4290

    invoke-static {v1, v2}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/widget/c;->a(II)V

    .line 148
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 151
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/c/b$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/c/b$1;-><init>(Lcom/zhihu/android/app/ui/fragment/c/b;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/c/b;->a(Lcom/zhihu/android/app/ui/fragment/c$a;)V

    .line 171
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/draft/RealmProvider;->a(Landroid/content/Context;I)Lio/realm/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->p:Lio/realm/k;

    .line 174
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->p:Lio/realm/k;

    const-class v1, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {v0, v1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/s;->b()Lio/realm/t;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->q:Lio/realm/t;

    .line 175
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->q:Lio/realm/t;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/c/b;->t:Lio/realm/m;

    invoke-virtual {v0, v1}, Lio/realm/t;->a(Lio/realm/m;)V

    .line 176
    return-void
.end method
