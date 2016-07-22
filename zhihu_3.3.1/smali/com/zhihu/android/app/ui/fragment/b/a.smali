.class public Lcom/zhihu/android/app/ui/fragment/b/a;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "CollectionSheetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhihu/android/app/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/CollectionList;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/zhihu/android/app/e/a;"
    }
.end annotation


# instance fields
.field private m:Lcom/zhihu/android/a/ad;

.field private n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

.field private o:Lcom/zhihu/android/base/widget/ZHRecyclerView;

.field private p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

.field private q:Lcom/zhihu/android/api/b/d;

.field private r:Lcom/zhihu/android/bumblebee/http/e;

.field private s:J

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/zhihu/android/bumblebee/b/c;

.field private w:Lcom/zhihu/android/bumblebee/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->t:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->u:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/b/a$2;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/b/a$2;-><init>(Lcom/zhihu/android/app/ui/fragment/b/a;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->v:Lcom/zhihu/android/bumblebee/b/c;

    .line 171
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/b/a$3;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/b/a$3;-><init>(Lcom/zhihu/android/app/ui/fragment/b/a;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->w:Lcom/zhihu/android/bumblebee/b/c;

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/b/a;)Lcom/zhihu/android/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    return-object v0
.end method

.method public static a(J)Lcom/zhihu/android/app/util/bb;
    .locals 6
    .parameter

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "answerId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collection-sheet-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/util/bb;->b(Z)V

    .line 76
    return-object v1
.end method

.method public static a(Lcom/zhihu/android/api/model/Answer;)Lcom/zhihu/android/app/util/bb;
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/zhihu/android/api/model/Answer;->id:J

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/b/a;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/b/a;Lcom/zhihu/android/bumblebee/http/e;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->r:Lcom/zhihu/android/bumblebee/http/e;

    return-object p1
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/b/a;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/b/a;->a(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/b/a;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/b/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/b/a;)Lcom/zhihu/android/app/ui/fragment/b/a$a;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/b/a;Lcom/zhihu/android/api/model/ZHObjectList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/b/a;->b(Lcom/zhihu/android/api/model/ZHObjectList;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/b/a;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/b/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/b/a;)Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const v0, 0x7f040055

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/ad;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    .line 127
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    iget-object v0, v0, Lcom/zhihu/android/a/ad;->c:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    .line 128
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;->setDefaultPeekTranslationRatio(F)V

    .line 129
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/b/a$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/b/a$1;-><init>(Lcom/zhihu/android/app/ui/fragment/b/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;->setOnSheetStateChangeListener(Lcom/zhihu/android/app/ui/widget/BottomSheetLayout$c;)V

    .line 146
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;->c()V

    .line 148
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    iget-object v0, v0, Lcom/zhihu/android/a/ad;->i:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->o:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    .line 150
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    iget-object v0, v0, Lcom/zhihu/android/a/ad;->e:Lcom/zhihu/android/base/widget/ZHTextView;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/base/widget/ZHTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    iget-object v0, v0, Lcom/zhihu/android/a/ad;->g:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    invoke-virtual {v0}, Lcom/zhihu/android/a/ad;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/CollectionList;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/CollectionList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/CollectionList;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p1, Lcom/zhihu/android/api/model/CollectionList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Collection;

    .line 201
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->c(Lcom/zhihu/android/api/model/Collection;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 7
    .parameter

    .prologue
    .line 216
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->q:Lcom/zhihu/android/api/b/d;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->s:J

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->o()Lcom/zhihu/android/api/model/Paging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Paging;->getNextOffset()J

    move-result-wide v4

    iget-object v6, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->w:Lcom/zhihu/android/bumblebee/b/c;

    invoke-interface/range {v1 .. v6}, Lcom/zhihu/android/api/b/d;->b(JJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 217
    return-void
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->q:Lcom/zhihu/android/api/b/d;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->s:J

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->v:Lcom/zhihu/android/bumblebee/b/c;

    invoke-interface {v0, v2, v3, v1}, Lcom/zhihu/android/api/b/d;->f(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 212
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 304
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/b/a$a;

    invoke-direct {v0}, Lcom/zhihu/android/app/ui/fragment/b/a$a;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    .line 305
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/zhihu/android/api/model/CollectionList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/b/a;->a(Lcom/zhihu/android/api/model/CollectionList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f040055

    return v0
.end method

.method protected j()I
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->l()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public k_()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;->d()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->n:Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/BottomSheetLayout;->d()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->r:Lcom/zhihu/android/bumblebee/http/e;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->m:Lcom/zhihu/android/a/ad;

    iget-object v0, v0, Lcom/zhihu/android/a/ad;->g:Lcom/zhihu/android/app/ui/widget/ProgressButton;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ProgressButton;->a()V

    .line 229
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->q:Lcom/zhihu/android/api/b/d;

    iget-wide v2, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->s:J

    const-string v0, ","

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->t:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v0, ","

    iget-object v5, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->u:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zhihu/android/app/ui/fragment/b/a$4;

    invoke-direct {v6, p0}, Lcom/zhihu/android/app/ui/fragment/b/a$4;-><init>(Lcom/zhihu/android/app/ui/fragment/b/a;)V

    invoke-interface/range {v1 .. v6}, Lcom/zhihu/android/api/b/d;->a(JLjava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->r:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/d/a;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/b/a;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000b9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCollectionEvent(Lcom/zhihu/android/app/d/d;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->a()Lcom/zhihu/android/api/model/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/b/a$a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/fragment/b/a$a;->g(I)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->a()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/fragment/b/a$a;->h(I)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    invoke-virtual {p1}, Lcom/zhihu/android/app/d/d;->a()Lcom/zhihu/android/api/model/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/app/ui/widget/c/a;->c(Lcom/zhihu/android/api/model/Collection;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/zhihu/android/app/ui/fragment/b/a$a;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 316
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->o:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(I)V

    .line 319
    :cond_1
    return-void
.end method

.method public onCollectionStateChangeEvent(Lcom/zhihu/android/app/d/a;)V
    .locals 5
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/a;->a()Z

    move-result v0

    .line 324
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/a;->b()Lcom/zhihu/android/api/model/Collection;

    move-result-object v1

    .line 325
    iget-wide v2, v1, Lcom/zhihu/android/api/model/Collection;->id:J

    .line 326
    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->u:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->u:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->p:Lcom/zhihu/android/app/ui/fragment/b/a$a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/fragment/b/a$a;->g()Ljava/util/List;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    .line 341
    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 342
    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->t:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->t:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->t:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->t:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->u:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->u:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/b/a;->setHasOptionsMenu(Z)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/b/a;->setMenuVisibility(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/b/d;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/d;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->q:Lcom/zhihu/android/api/b/d;

    .line 110
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    const-string v1, "answerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/app/ui/fragment/b/a;->s:J

    .line 113
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    if-eqz p2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->q()Landroid/view/animation/Animation;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/c;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->v()V

    .line 120
    return-void
.end method
