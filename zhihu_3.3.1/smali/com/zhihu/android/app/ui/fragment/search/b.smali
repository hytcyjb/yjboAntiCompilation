.class public Lcom/zhihu/android/app/ui/fragment/search/b;
.super Lcom/zhihu/android/app/ui/fragment/search/d;
.source "InviteToChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/search/d;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b",
        "<",
        "Lcom/zhihu/android/api/model/People;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/ImageView;

.field private s:Ljava/lang/String;

.field private t:Lrx/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/search/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/search/b;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;
    .locals 4
    .parameter

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/search/b;

    const-string v3, "invite-to-chat"

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/search/b;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    return-object v0
.end method

.method public static u()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/search/b;

    const/4 v2, 0x0

    const-string v3, "invite-to-chat"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "people"

    return-object v0
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/search/d;->b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/search/b$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/search/b$3;-><init>(Lcom/zhihu/android/app/ui/fragment/search/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$a;)V

    .line 209
    return-object v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f04005e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 235
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->t()V

    goto :goto_0

    .line 239
    :sswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x7f100023 -> :sswitch_0
        0x7f100143 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder",
            "<",
            "Lcom/zhihu/android/api/model/People;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->t_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    .line 248
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->t_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/People;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 255
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->c(Z)V

    .line 256
    invoke-static {p1}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/view/View;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 258
    :cond_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->t_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/c/a;->a(Lcom/zhihu/android/api/model/People;Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/search/d;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/search/b;->d(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->s:Ljava/lang/String;

    .line 98
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/search/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/search/d;->onDestroyView()V

    .line 188
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->t:Lrx/i;

    invoke-interface {v0}, Lrx/i;->unsubscribe()V

    .line 189
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->w()Lcom/zhihu/android/app/ui/widget/SystemBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SystemBar;->setToolbarVisibility(I)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/search/b;->a(F)V

    .line 117
    const v0, 0x7f10011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f100143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->r:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/b/a;->a(Landroid/widget/TextView;)Lrx/b;

    move-result-object v0

    const-wide/16 v2, 0x12c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lrx/b;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/b;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/b;->observeOn(Lrx/e;)Lrx/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/search/b$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/search/b$1;-><init>(Lcom/zhihu/android/app/ui/fragment/search/b;)V

    invoke-virtual {v0, v1}, Lrx/b;->subscribe(Lrx/c;)Lrx/i;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->t:Lrx/i;

    .line 152
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 155
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 156
    const v0, 0x7f10001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    .line 158
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v1, Lcom/zhihu/android/app/ui/widget/c;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/ui/widget/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 160
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V

    .line 162
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setHasFixedSize(Z)V

    .line 163
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/search/b;->a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 164
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/search/b;->b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 166
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->i:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 167
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/search/b$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/search/b$2;-><init>(Lcom/zhihu/android/app/ui/fragment/search/b;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 179
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->p:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/search/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/search/b;->q:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/s;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 182
    return-void
.end method

.method protected v()I
    .locals 1

    .prologue
    .line 214
    const v0, 0x7f040104

    return v0
.end method
