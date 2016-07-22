.class public Lcom/zhihu/android/app/ui/fragment/i;
.super Lcom/zhihu/android/app/ui/fragment/c;
.source "FeedsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhihu/android/app/e/a;
.implements Lcom/zhihu/android/app/e/c;
.implements Lcom/zhihu/android/app/ui/widget/holder/AnnouncementViewHolder$a;
.implements Lcom/zhihu/android/app/ui/widget/holder/PopularTopicsActionCardViewHolder$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/c",
        "<",
        "Lcom/zhihu/android/api/model/FeedList;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/zhihu/android/app/e/a;",
        "Lcom/zhihu/android/app/e/c;",
        "Lcom/zhihu/android/app/ui/widget/holder/AnnouncementViewHolder$a;",
        "Lcom/zhihu/android/app/ui/widget/holder/PopularTopicsActionCardViewHolder$a;"
    }
.end annotation


# static fields
.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/zhihu/android/app/ui/widget/b/b;

.field private B:Lcom/zhihu/android/api/model/Announcement;

.field private C:Lcom/zhihu/android/app/ui/widget/adapter/o;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:Lcom/zhihu/android/base/util/g;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Landroid/view/MenuItem;

.field private K:Lcom/zhihu/android/app/ui/widget/b/d;

.field private L:Landroid/support/v7/widget/a/a;

.field private n:Lcom/zhihu/android/api/b/q;

.field private o:Lcom/zhihu/android/api/b/ah;

.field private p:Lcom/zhihu/android/api/b/ae;

.field private q:Lcom/zhihu/android/api/b/aa;

.field private r:Lcom/zhihu/android/api/b/f;

.field private s:Lcom/zhihu/android/api/b/ai;

.field private t:Lcom/zhihu/android/api/b/b;

.field private u:Lcom/zhihu/android/bumblebee/http/e;

.field private v:Lcom/zhihu/android/bumblebee/http/e;

.field private w:Lcom/zhihu/android/bumblebee/http/e;

.field private x:Z

.field private y:Lcom/zhihu/android/a/bn;

.field private z:Lcom/zhihu/android/app/util/FabScrollHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zhihu/android/app/ui/fragment/i;->m:Ljava/util/List;

    .line 138
    sget-object v0, Lcom/zhihu/android/app/ui/fragment/i;->m:Ljava/util/List;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x6

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x8

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0xc

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x47

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x49

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x4f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x53

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x59

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x61

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/c;-><init>()V

    .line 175
    iput v3, p0, Lcom/zhihu/android/app/ui/fragment/i;->E:I

    .line 993
    new-instance v0, Landroid/support/v7/widget/a/a;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$6;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v3, v2}, Lcom/zhihu/android/app/ui/fragment/i$6;-><init>(Lcom/zhihu/android/app/ui/fragment/i;II)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/a/a;-><init>(Landroid/support/v7/widget/a/a$a;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->L:Landroid/support/v7/widget/a/a;

    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    .line 426
    :goto_0
    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->b(Lcom/zhihu/android/api/model/Announcement;)V

    .line 429
    :cond_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->r()Lcom/zhihu/android/api/model/AppConfig;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/zhihu/android/api/model/AppConfig;->announcement:Lcom/zhihu/android/api/model/Announcement;

    if-eqz v2, :cond_2

    .line 421
    iget-object v0, v0, Lcom/zhihu/android/api/model/AppConfig;->announcement:Lcom/zhihu/android/api/model/Announcement;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    .line 422
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private C()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v0, v0, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 804
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v0, v0, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    const v1, 0x7f1001c9

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v0, v0, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    const v1, 0x7f1001c8

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->g:Lcom/zhihu/android/base/widget/ZHFrameLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    invoke-virtual {v1}, Lcom/zhihu/android/a/bn;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->addView(Landroid/view/View;)V

    .line 809
    new-instance v0, Lcom/zhihu/android/app/util/FabScrollHelper;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v1, v1, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/util/FabScrollHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->z:Lcom/zhihu/android/app/util/FabScrollHelper;

    .line 810
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/i;)Lcom/zhihu/android/app/util/FabScrollHelper;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->z:Lcom/zhihu/android/app/util/FabScrollHelper;

    return-object v0
.end method

.method private a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1062
    invoke-virtual {p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;->b()Ljava/lang/Object;

    move-result-object v0

    .line 1064
    instance-of v1, v0, Lcom/zhihu/android/api/model/Feed;

    if-eqz v1, :cond_1

    .line 1065
    check-cast v0, Lcom/zhihu/android/api/model/Feed;

    .line 1067
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/zhihu/android/app/util/bc;->b(Landroid/content/Context;Lcom/zhihu/android/api/model/Feed;I)V

    .line 1069
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    check-cast v1, Lcom/zhihu/android/app/ui/widget/adapter/o;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/adapter/o;->a(Lcom/zhihu/android/api/model/Feed;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1070
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    if-nez v1, :cond_0

    .line 1071
    const-class v1, Lcom/zhihu/android/api/b/ah;

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/b/ah;

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    iget-object v2, v0, Lcom/zhihu/android/api/model/Feed;->id:Ljava/lang/String;

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/i$7;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/zhihu/android/app/ui/fragment/i$7;-><init>(Lcom/zhihu/android/app/ui/fragment/i;ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;Lcom/zhihu/android/api/model/Feed;)V

    invoke-interface {v1, v2, v3}, Lcom/zhihu/android/api/b/ah;->c(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 1166
    :cond_1
    :goto_0
    return-void

    .line 1090
    :cond_2
    iget-object v1, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    invoke-virtual {v1}, Lcom/zhihu/android/api/model/ZHObject;->isAnswer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1091
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->q:Lcom/zhihu/android/api/b/aa;

    if-nez v1, :cond_3

    .line 1092
    const-class v1, Lcom/zhihu/android/api/b/aa;

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/b/aa;

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->q:Lcom/zhihu/android/api/b/aa;

    .line 1095
    :cond_3
    iget-object v0, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v1, Lcom/zhihu/android/api/model/Answer;

    invoke-static {v0, v1}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Answer;

    .line 1097
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->q:Lcom/zhihu/android/api/b/aa;

    iget-object v2, v0, Lcom/zhihu/android/api/model/Answer;->belongsQuestion:Lcom/zhihu/android/api/model/Question;

    iget-wide v2, v2, Lcom/zhihu/android/api/model/Question;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/i$8;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/zhihu/android/app/ui/fragment/i$8;-><init>(Lcom/zhihu/android/app/ui/fragment/i;ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;Lcom/zhihu/android/api/model/Answer;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/zhihu/android/api/b/aa;->e(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    .line 1113
    :cond_4
    iget-object v1, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    invoke-virtual {v1}, Lcom/zhihu/android/api/model/ZHObject;->isQuestion()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1114
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->q:Lcom/zhihu/android/api/b/aa;

    if-nez v1, :cond_5

    .line 1115
    const-class v1, Lcom/zhihu/android/api/b/aa;

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/b/aa;

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->q:Lcom/zhihu/android/api/b/aa;

    .line 1118
    :cond_5
    iget-object v0, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v1, Lcom/zhihu/android/api/model/Question;

    invoke-static {v0, v1}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Question;

    .line 1120
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->q:Lcom/zhihu/android/api/b/aa;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/Question;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/i$9;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/zhihu/android/app/ui/fragment/i$9;-><init>(Lcom/zhihu/android/app/ui/fragment/i;ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;Lcom/zhihu/android/api/model/Question;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/zhihu/android/api/b/aa;->e(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0

    .line 1136
    :cond_6
    iget-object v1, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    invoke-virtual {v1}, Lcom/zhihu/android/api/model/ZHObject;->isArticle()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1137
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->r:Lcom/zhihu/android/api/b/f;

    if-nez v1, :cond_7

    .line 1138
    const-class v1, Lcom/zhihu/android/api/b/f;

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/b/f;

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->r:Lcom/zhihu/android/api/b/f;

    .line 1141
    :cond_7
    iget-object v0, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v1, Lcom/zhihu/android/api/model/Article;

    invoke-static {v0, v1}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Article;

    .line 1143
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->r:Lcom/zhihu/android/api/b/f;

    iget-wide v2, v0, Lcom/zhihu/android/api/model/Article;->id:J

    new-instance v4, Lcom/zhihu/android/app/ui/fragment/i$10;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/zhihu/android/app/ui/fragment/i$10;-><init>(Lcom/zhihu/android/app/ui/fragment/i;ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;Lcom/zhihu/android/api/model/Article;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/zhihu/android/api/b/f;->c(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    goto/16 :goto_0

    .line 1161
    :cond_8
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 1163
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010d

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->t:Lcom/zhihu/android/api/b/b;

    if-nez v0, :cond_0

    .line 1170
    const-class v0, Lcom/zhihu/android/api/b/b;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/b;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->t:Lcom/zhihu/android/api/b/b;

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->t:Lcom/zhihu/android/api/b/b;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$11;

    invoke-direct {v1, p0, p1, p3}, Lcom/zhihu/android/app/ui/fragment/i$11;-><init>(Lcom/zhihu/android/app/ui/fragment/i;ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    invoke-interface {v0, p2, v1}, Lcom/zhihu/android/api/b/b;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 1189
    return-void
.end method

.method private a(Lcom/zhihu/android/api/model/Ad$Creative;)V
    .locals 3
    .parameter

    .prologue
    .line 1209
    if-nez p1, :cond_1

    .line 1224
    :cond_0
    return-void

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->D:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->D:Ljava/util/List;

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->D:Ljava/util/List;

    iget v1, p1, Lcom/zhihu/android/api/model/Ad$Creative;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->D:Ljava/util/List;

    iget v1, p1, Lcom/zhihu/android/api/model/Ad$Creative;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object v0, p1, Lcom/zhihu/android/api/model/Ad$Creative;->impressionTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1221
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zhihu/android/app/util/al;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/zhihu/android/api/model/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 1192
    if-nez p1, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/Ad;->closeTrack:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/al;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/i;ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/i;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/i;ILjava/lang/String;Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/i;->a(ILjava/lang/String;Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/i;Lcom/zhihu/android/api/model/Ad$Creative;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/api/model/Ad$Creative;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/i;Lcom/zhihu/android/api/model/Ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/i;->b(Lcom/zhihu/android/api/model/Ad;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/i;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/i;->I:Z

    return p1
.end method

.method private b(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 1205
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010e

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private b(Lcom/zhihu/android/api/model/Ad;)V
    .locals 3
    .parameter

    .prologue
    .line 1227
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zhihu/android/api/model/Ad;->loadTracks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1233
    :cond_0
    return-void

    .line 1230
    :cond_1
    iget-object v0, p1, Lcom/zhihu/android/api/model/Ad;->loadTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1231
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zhihu/android/app/util/al;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized b(Lcom/zhihu/android/api/model/Announcement;)V
    .locals 3
    .parameter

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/af;->p(Landroid/content/Context;)I

    move-result v0

    .line 434
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/zhihu/android/api/model/Announcement;->id:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/zhihu/android/api/model/Announcement;->id:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->b(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x2013

    if-ne v0, v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 438
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Announcement;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->a(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    .line 440
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/i;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/i;->B()V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/i;ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/i;->b(ILcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/fragment/i;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/i;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->x:Z

    return v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/fragment/i;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/zhihu/android/app/ui/fragment/i;->H:Z

    return p1
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/fragment/i;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->u:Lcom/zhihu/android/bumblebee/http/e;

    return-object v0
.end method

.method static synthetic e(Lcom/zhihu/android/app/ui/fragment/i;)Lcom/zhihu/android/bumblebee/http/e;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->v:Lcom/zhihu/android/bumblebee/http/e;

    return-object v0
.end method

.method static synthetic f(Lcom/zhihu/android/app/ui/fragment/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->I:Z

    return v0
.end method

.method static synthetic g(Lcom/zhihu/android/app/ui/fragment/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->G:Z

    return v0
.end method

.method static synthetic h(Lcom/zhihu/android/app/ui/fragment/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->H:Z

    return v0
.end method

.method public static u()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/i;

    const/4 v2, 0x0

    const-string v3, "home"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 188
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 302
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

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
    .line 221
    const v0, 0x7f04008e

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/bn;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/fragment/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/zhihu/android/api/model/FeedList;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/api/model/FeedList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 699
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->data:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 700
    iget-object v0, p1, Lcom/zhihu/android/api/model/FeedList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Feed;

    .line 701
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Feed;->isFeed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 703
    sget-object v1, Lcom/zhihu/android/app/ui/fragment/i$13;->a:[I

    iget-object v4, v0, Lcom/zhihu/android/api/model/Feed;->verb:Ljava/lang/String;

    invoke-static {v4}, Lcom/zhihu/android/api/util/FeedVerb;->makeValueOf(Ljava/lang/String;)Lcom/zhihu/android/api/util/FeedVerb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhihu/android/api/util/FeedVerb;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 712
    :pswitch_0
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 724
    :pswitch_1
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 736
    :pswitch_2
    iget-object v1, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v4, Lcom/zhihu/android/api/model/Article;

    invoke-static {v1, v4}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/model/Article;

    .line 738
    iget-object v1, v1, Lcom/zhihu/android/api/model/Article;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->c(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 741
    :cond_1
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->d(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    :pswitch_3
    iget-object v1, v0, Lcom/zhihu/android/api/model/Feed;->target:Lcom/zhihu/android/api/model/ZHObject;

    const-class v4, Lcom/zhihu/android/api/model/RoundTable;

    invoke-static {v1, v4}, Lcom/zhihu/android/api/model/ZHObject;->to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/model/RoundTable;

    .line 752
    iget-object v1, v1, Lcom/zhihu/android/api/model/RoundTable;->banner:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 753
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->f(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 755
    :cond_2
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->g(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 762
    :pswitch_4
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->e(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    :pswitch_5
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->h(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 770
    :pswitch_6
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->i(Lcom/zhihu/android/api/model/Feed;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 775
    :cond_3
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Feed;->isActionCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 776
    iget-object v0, v0, Lcom/zhihu/android/api/model/Feed;->card:Lcom/zhihu/android/api/model/ActionCard;

    .line 779
    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ActionCard;->isPopularTopicsCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/ActionCard;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 784
    :cond_4
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Feed;->isFeedAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    iget-object v0, v0, Lcom/zhihu/android/api/model/Feed;->ad:Lcom/zhihu/android/api/model/Ad;

    .line 788
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Ad;->isAdCard()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 790
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->a(Lcom/zhihu/android/api/model/Ad;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 791
    :cond_5
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/Ad;->isAdCarousel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-static {v0}, Lcom/zhihu/android/app/ui/widget/c/a;->b(Lcom/zhihu/android/api/model/Ad;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 799
    :cond_6
    return-object v2

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/zhihu/android/api/model/Announcement;)V
    .locals 2
    .parameter

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/zhihu/android/api/model/Announcement;->id:I

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;I)V

    .line 448
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    iget v0, v0, Lcom/zhihu/android/api/model/Announcement;->id:I

    iget v1, p1, Lcom/zhihu/android/api/model/Announcement;->id:I

    if-ne v0, v1, :cond_0

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    .line 451
    :cond_0
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 4
    .parameter

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    if-eqz p1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_2

    .line 977
    invoke-virtual {p1}, Lcom/zhihu/android/api/model/NotificationBadge;->shouldShakeBell()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 978
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->start()V

    .line 984
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->A:Lcom/zhihu/android/app/ui/widget/b/b;

    if-eqz v0, :cond_0

    .line 985
    iget-wide v0, p1, Lcom/zhihu/android/api/model/NotificationBadge;->newMessagesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 986
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->A:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->a()V

    goto :goto_0

    .line 980
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_1

    .line 988
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->A:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/b;->c()V

    goto :goto_0
.end method

.method protected a(Lcom/zhihu/android/api/model/Paging;)V
    .locals 4
    .parameter

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->C:Lcom/zhihu/android/app/ui/widget/adapter/o;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/adapter/o;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/bc;->a(Landroid/content/Context;I)V

    .line 647
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->x:Z

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    if-nez v0, :cond_0

    .line 649
    const-class v0, Lcom/zhihu/android/api/b/ah;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ah;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextAfterId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/i$3;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/fragment/i$3;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/zhihu/android/api/b/ah;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->v:Lcom/zhihu/android/bumblebee/http/e;

    .line 693
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->n:Lcom/zhihu/android/api/b/q;

    if-nez v0, :cond_2

    .line 677
    const-class v0, Lcom/zhihu/android/api/b/q;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/q;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->n:Lcom/zhihu/android/api/b/q;

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->n:Lcom/zhihu/android/api/b/q;

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/Paging;->getNextAfterId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/i$4;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/i$4;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/q;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->v:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 230
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setTitle(I)V

    .line 231
    new-instance v0, Landroid/support/v7/c/a/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/c/a/b;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/b/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->A:Lcom/zhihu/android/app/ui/widget/b/b;

    .line 233
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->A:Lcom/zhihu/android/app/ui/widget/b/b;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/b/b;->setAlpha(I)V

    .line 234
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->j:Lcom/zhihu/android/base/widget/ZHToolBar;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->A:Lcom/zhihu/android/app/ui/widget/b/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHToolBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->A:Lcom/zhihu/android/app/ui/widget/b/b;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/i$1;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 243
    return-void
.end method

.method public a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 863
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$ViewHolder;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h(I)V

    .line 865
    instance-of v0, p1, Lcom/zhihu/android/app/ui/widget/holder/AdCardViewHolder;

    if-eqz v0, :cond_1

    .line 866
    check-cast p1, Lcom/zhihu/android/app/ui/widget/holder/AdCardViewHolder;

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/holder/AdCardViewHolder;->t_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Ad;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/api/model/Ad;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    instance-of v0, p1, Lcom/zhihu/android/app/ui/widget/holder/AdCarouselViewHolder;

    if-eqz v0, :cond_0

    .line 868
    check-cast p1, Lcom/zhihu/android/app/ui/widget/holder/AdCarouselViewHolder;

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/holder/AdCarouselViewHolder;->t_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Ad;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/api/model/Ad;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/bc;->a(Landroid/content/Context;Z)V

    .line 504
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->r()Lcom/zhihu/android/api/model/AppConfig;

    move-result-object v0

    .line 506
    if-eqz p1, :cond_0

    .line 508
    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->E:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->E:I

    .line 510
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/zhihu/android/api/model/AppConfig;->config:Lcom/zhihu/android/api/model/Config;

    iget-byte v0, v0, Lcom/zhihu/android/api/model/Config;->enableFoolEggs:B

    if-lez v0, :cond_0

    sget-object v0, Lcom/zhihu/android/app/ui/fragment/i;->m:Ljava/util/List;

    iget v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const v0, 0x7f0f0027

    move v1, v0

    .line 513
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/g;->a(Landroid/app/Activity;)Lcom/zhihu/android/base/util/g;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->q()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhihu/android/base/util/g;->a(Landroid/view/ViewGroup;)Lcom/zhihu/android/base/util/g;

    move-result-object v0

    const v2, 0x7f02018f

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/util/g;->a(I)Lcom/zhihu/android/base/util/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/util/g;->b(I)Lcom/zhihu/android/base/util/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->F:Lcom/zhihu/android/base/util/g;

    .line 515
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->F:Lcom/zhihu/android/base/util/g;

    invoke-virtual {v0}, Lcom/zhihu/android/base/util/g;->a()V

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->x:Z

    if-eqz v0, :cond_3

    .line 520
    iput-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/i;->I:Z

    .line 521
    iput-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/i;->G:Z

    .line 523
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    if-nez v0, :cond_1

    .line 524
    const-class v0, Lcom/zhihu/android/api/b/ah;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ah;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    .line 527
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/base/util/b;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/i$18;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/i$18;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v1, v0, v2}, Lcom/zhihu/android/api/b/ah;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->u:Lcom/zhihu/android/bumblebee/http/e;

    .line 558
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->o:Lcom/zhihu/android/api/b/ah;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/i$19;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/i$19;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v1, v0, v2}, Lcom/zhihu/android/api/b/ah;->b(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->v:Lcom/zhihu/android/bumblebee/http/e;

    .line 640
    :goto_1
    return-void

    .line 511
    :cond_2
    const v0, 0x7f0f0028

    move v1, v0

    goto/16 :goto_0

    .line 586
    :cond_3
    iput-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/i;->H:Z

    .line 587
    iput-boolean v3, p0, Lcom/zhihu/android/app/ui/fragment/i;->G:Z

    .line 589
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->n:Lcom/zhihu/android/api/b/q;

    if-nez v0, :cond_4

    .line 590
    const-class v0, Lcom/zhihu/android/api/b/q;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/q;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->n:Lcom/zhihu/android/api/b/q;

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->n:Lcom/zhihu/android/api/b/q;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$20;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/i$20;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/q;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->u:Lcom/zhihu/android/bumblebee/http/e;

    .line 622
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->n:Lcom/zhihu/android/api/b/q;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/i$2;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/q;->b(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->v:Lcom/zhihu/android/bumblebee/http/e;

    goto :goto_1
.end method

.method protected a_(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/b;->b(Landroid/content/Context;F)I

    move-result v0

    .line 381
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 383
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 384
    return-void
.end method

.method public answerAnnouncement(Lcom/zhihu/android/api/model/Announcement;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    if-nez v0, :cond_0

    .line 403
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    .line 405
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->B:Lcom/zhihu/android/api/model/Announcement;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->b(Lcom/zhihu/android/api/model/Announcement;)V

    .line 407
    :cond_0
    return-void
.end method

.method protected b(Landroid/view/View;Landroid/os/Bundle;)Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/o;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$15;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/i$15;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/o;-><init>(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$b;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->C:Lcom/zhihu/android/app/ui/widget/adapter/o;

    .line 334
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->C:Lcom/zhihu/android/app/ui/widget/adapter/o;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$16;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/i$16;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/adapter/o;->a(Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter$a;)V

    .line 374
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->C:Lcom/zhihu/android/app/ui/widget/adapter/o;

    return-object v0
.end method

.method protected synthetic c(Lcom/zhihu/android/api/model/ZHObjectList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 131
    check-cast p1, Lcom/zhihu/android/api/model/FeedList;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/api/model/FeedList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->c()V

    .line 203
    const-string v0, "Feed"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 393
    if-ne p1, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v0, v0, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v0, v0, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->a(Z)V

    .line 398
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/af;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->x:Z

    .line 466
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->p:Lcom/zhihu/android/api/b/ae;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$17;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/i$17;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/ae;->c(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->w:Lcom/zhihu/android/bumblebee/http/e;

    .line 497
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->h()V

    .line 498
    return-void
.end method

.method protected i()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->b(I)I

    move-result v1

    const/16 v2, 0x2013

    if-ne v1, v2, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 459
    :cond_0
    return v0
.end method

.method public k_()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 874
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v1, v1, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v1, v1, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->c(Z)V

    .line 885
    :goto_0
    return v0

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->F:Lcom/zhihu/android/base/util/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->F:Lcom/zhihu/android/base/util/g;

    invoke-virtual {v1}, Lcom/zhihu/android/base/util/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->F:Lcom/zhihu/android/base/util/g;

    invoke-virtual {v1}, Lcom/zhihu/android/base/util/g;->b()V

    goto :goto_0

    .line 885
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 826
    :goto_0
    return-void

    .line 816
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    invoke-virtual {v1}, Lcom/zhihu/android/a/bn;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    invoke-virtual {v2}, Lcom/zhihu/android/a/bn;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/util/y;->b(Lcom/zhihu/android/app/ui/activity/a;Landroid/view/View;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/m/b;->B()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v0, v0, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->c(Z)V

    goto :goto_0

    .line 822
    :pswitch_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/h;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 823
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->y:Lcom/zhihu/android/a/bn;

    iget-object v0, v0, Lcom/zhihu/android/a/bn;->e:Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/ZHFloatingActionMenu;->c(Z)V

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001c8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Lcom/zhihu/android/app/ui/widget/holder/PopularTopicsActionCardViewHolder;Lcom/zhihu/android/app/ui/widget/holder/PopularTopicsItemViewHolder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-virtual {p2}, Lcom/zhihu/android/app/ui/widget/holder/PopularTopicsItemViewHolder;->t_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Topic;

    .line 832
    invoke-virtual {p1, v0}, Lcom/zhihu/android/app/ui/widget/holder/PopularTopicsActionCardViewHolder;->a(Lcom/zhihu/android/api/model/Topic;)I

    move-result v1

    .line 834
    if-nez v1, :cond_2

    .line 836
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->a:Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/widget/holder/PopularTopicsActionCardViewHolder;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhihu/android/base/widget/adapter/ZHRecyclerViewAdapter;->h(I)V

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->s:Lcom/zhihu/android/api/b/ai;

    if-nez v1, :cond_1

    .line 842
    const-class v1, Lcom/zhihu/android/api/b/ai;

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/b/ai;

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->s:Lcom/zhihu/android/api/b/ai;

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->s:Lcom/zhihu/android/api/b/ai;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Topic;->id:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/i$5;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/i$5;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-interface {v1, v0, v2}, Lcom/zhihu/android/api/b/ai;->c(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 858
    :goto_0
    return-void

    .line 837
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->d(Z)V

    .line 197
    const-class v0, Lcom/zhihu/android/api/b/ae;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ae;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->p:Lcom/zhihu/android/api/b/ae;

    .line 198
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 932
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 933
    const v0, 0x7f110014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 934
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onDestroyView()V

    .line 287
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->u:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->u:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->v:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->v:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->w:Lcom/zhihu/android/bumblebee/http/e;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->w:Lcom/zhihu/android/bumblebee/http/e;

    invoke-interface {v0}, Lcom/zhihu/android/bumblebee/http/e;->b()V

    .line 298
    :cond_2
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 917
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onHiddenChanged(Z)V

    .line 918
    if-nez p1, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 920
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 927
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/LastReadHelper;->a(Landroid/content/Context;)V

    .line 928
    return-void

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    goto :goto_0
.end method

.method public onNotificationBadgeChangedEvent(Lcom/zhihu/android/app/d/k;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 965
    invoke-virtual {p1}, Lcom/zhihu/android/app/d/k;->a()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 966
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 967
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 938
    .line 939
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 947
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 950
    :goto_0
    return v0

    .line 941
    :pswitch_0
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/search/SearchFragment;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    .line 949
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 950
    const/4 v0, 0x1

    goto :goto_0

    .line 944
    :pswitch_1
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/k/g;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    goto :goto_1

    .line 939
    :pswitch_data_0
    .packed-switch 0x7f100283
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 898
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onPause()V

    .line 899
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 900
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/b/d;->stop()V

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->x:Z

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/bc;->b(Landroid/content/Context;Z)V

    .line 905
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 955
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/c;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 956
    const v0, 0x7f100284

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->J:Landroid/view/MenuItem;

    .line 957
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->J:Landroid/view/MenuItem;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 958
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 959
    new-instance v1, Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhihu/android/app/ui/widget/b/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    .line 960
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->J:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->K:Lcom/zhihu/android/app/ui/widget/b/d;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 961
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 909
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/c;->onResume()V

    .line 910
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 911
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/i;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->x()Lcom/zhihu/android/api/model/NotificationBadge;

    move-result-object v0

    .line 912
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    .line 913
    return-void
.end method

.method public onUseTopStorySettingChanged(Lcom/zhihu/android/app/d/n;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->x:Z

    iget-boolean v1, p1, Lcom/zhihu/android/app/d/n;->a:Z

    if-eq v0, v1, :cond_0

    .line 212
    iget-boolean v0, p1, Lcom/zhihu/android/app/d/n;->a:Z

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->x:Z

    .line 213
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->e:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->b(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 249
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/i;->C()V

    .line 251
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/i$12;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/i$12;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/i;->a(Lcom/zhihu/android/app/ui/fragment/c$a;)V

    .line 271
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->L:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 273
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/i;->f:Lcom/zhihu/android/base/widget/ZHRecyclerView;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/i$14;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/i$14;-><init>(Lcom/zhihu/android/app/ui/fragment/i;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method
