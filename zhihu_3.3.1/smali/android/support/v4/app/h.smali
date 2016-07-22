.class final Landroid/support/v4/app/h;
.super Landroid/support/v4/app/t;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/p$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/h$b;,
        Landroid/support/v4/app/h$a;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Landroid/support/v4/app/q;

.field c:Landroid/support/v4/app/h$a;

.field d:Landroid/support/v4/app/h$a;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Z

.field p:I

.field q:I

.field r:Ljava/lang/CharSequence;

.field s:I

.field t:Ljava/lang/CharSequence;

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/h;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/q;)V
    .locals 1
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->m:Z

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/h;->p:I

    .line 354
    iput-object p1, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    .line 355
    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/h$b;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/h$b;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1032
    invoke-direct {p0, p2}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;)V

    .line 1033
    new-instance v2, Landroid/support/v4/app/h$b;

    invoke-direct {v2, p0}, Landroid/support/v4/app/h$b;-><init>(Landroid/support/v4/app/h;)V

    .line 1038
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v1, v1, Landroid/support/v4/app/q;->o:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/h$b;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    .line 1042
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1043
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1044
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/h$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    .line 1042
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    .line 1051
    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1052
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1053
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/h$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    .line 1051
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1060
    :cond_2
    if-nez v8, :cond_3

    .line 1061
    const/4 v2, 0x0

    .line 1064
    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/h$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/e/a;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1119
    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    .line 1120
    iget-object v1, p0, Landroid/support/v4/app/h;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1121
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1122
    if-eqz p3, :cond_2

    .line 1123
    iget-object v1, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->a(Ljava/util/Collection;)Z

    .line 1130
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1131
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    if-eqz v1, :cond_1

    .line 1132
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1135
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;Landroid/support/v4/e/a;Z)V

    .line 1144
    :goto_1
    return-object v0

    .line 1125
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/h;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/h;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/e/a;)Landroid/support/v4/e/a;

    move-result-object v0

    goto :goto_0

    .line 1137
    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/as;

    if-eqz v1, :cond_4

    .line 1138
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1141
    :cond_4
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/h;->b(Landroid/support/v4/app/h$b;Landroid/support/v4/e/a;Z)V

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/h$b;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/e/a;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Z",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1315
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/h;->b(Landroid/support/v4/app/h$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/e/a;

    move-result-object v0

    .line 1319
    if-eqz p2, :cond_1

    .line 1320
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/as;

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1324
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;Landroid/support/v4/e/a;Z)V

    .line 1332
    :goto_0
    return-object v0

    .line 1326
    :cond_1
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    if-eqz v1, :cond_2

    .line 1327
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    iget-object v2, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1330
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/h;->b(Landroid/support/v4/app/h$b;Landroid/support/v4/e/a;Z)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/h;Landroid/support/v4/app/h$b;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/e/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/e/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/e/a;)Landroid/support/v4/e/a;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    invoke-virtual {p2}, Landroid/support/v4/e/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    :goto_0
    return-object p2

    .line 1348
    :cond_0
    new-instance v1, Landroid/support/v4/e/a;

    invoke-direct {v1}, Landroid/support/v4/e/a;-><init>()V

    .line 1349
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1350
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1351
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1352
    if-eqz v0, :cond_1

    .line 1353
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    .line 1356
    goto :goto_0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1100
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1101
    :cond_0
    const/4 v0, 0x0

    .line 1103
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/u;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1083
    if-nez p0, :cond_0

    .line 1084
    const/4 v0, 0x0

    .line 1086
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/e/a;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1110
    if-eqz p0, :cond_0

    .line 1111
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 1114
    :cond_0
    return-object p0
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/q;

    .line 416
    if-eqz p3, :cond_1

    .line 417
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 425
    :cond_1
    if-eqz p1, :cond_3

    .line 426
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_2

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 434
    :cond_3
    new-instance v0, Landroid/support/v4/app/h$a;

    invoke-direct {v0}, Landroid/support/v4/app/h$a;-><init>()V

    .line 435
    iput p4, v0, Landroid/support/v4/app/h$a;->c:I

    .line 436
    iput-object p2, v0, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 437
    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$a;)V

    .line 438
    return-void
.end method

.method private a(Landroid/support/v4/app/h$b;ILjava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1399
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1400
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1401
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1402
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v3, p2, :cond_0

    .line 1404
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1405
    iget-object v3, p1, Landroid/support/v4/app/h$b;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1406
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1408
    iget-object v3, p1, Landroid/support/v4/app/h$b;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1411
    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1413
    iget-object v3, p1, Landroid/support/v4/app/h$b;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1418
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/h$b;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/e/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1291
    if-eqz p4, :cond_1

    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    .line 1294
    :goto_0
    if-eqz v0, :cond_0

    .line 1295
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/e/a;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1296
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/e/a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1297
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/as;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1299
    :cond_0
    return-void

    .line 1291
    :cond_1
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/h$b;Landroid/support/v4/e/a;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1446
    iget-object v1, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    .line 1447
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1448
    iget-object v0, p0, Landroid/support/v4/app/h;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1449
    iget-object v1, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1450
    invoke-virtual {p2, v1}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1451
    if-eqz v1, :cond_0

    .line 1452
    invoke-static {v1}, Landroid/support/v4/app/u;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1453
    if-eqz p3, :cond_2

    .line 1454
    iget-object v4, p1, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/h;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1446
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 1456
    :cond_2
    iget-object v4, p1, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1460
    :cond_3
    return-void
.end method

.method private a(Landroid/support/v4/app/h$b;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1262
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v0, Landroid/support/v4/app/h$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move/from16 v6, p6

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/h$2;-><init>(Landroid/support/v4/app/h;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/h$b;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1287
    return-void
.end method

.method private static a(Landroid/support/v4/app/h$b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1435
    if-eqz p1, :cond_0

    .line 1436
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1437
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1438
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1439
    iget-object v3, p0, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/e/a;

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/h;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1442
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/h;Landroid/support/v4/app/h$b;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/h;Landroid/support/v4/app/h$b;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/e/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/e/a;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/h;Landroid/support/v4/e/a;Landroid/support/v4/app/h$b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/h;->a(Landroid/support/v4/e/a;Landroid/support/v4/app/h$b;)V

    return-void
.end method

.method private a(Landroid/support/v4/e/a;Landroid/support/v4/app/h$b;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/h$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1302
    iget-object v0, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/e/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    iget-object v0, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1306
    if-eqz v0, :cond_0

    .line 1307
    iget-object v1, p2, Landroid/support/v4/app/h$b;->c:Landroid/support/v4/app/u$a;

    iput-object v0, v1, Landroid/support/v4/app/u$a;->a:Landroid/view/View;

    .line 1310
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1422
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1423
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/e/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1424
    invoke-virtual {p0, v0}, Landroid/support/v4/e/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1425
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/e/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1431
    :cond_0
    :goto_1
    return-void

    .line 1423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1429
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1072
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v6, v3

    .line 1073
    :goto_0
    if-ge v6, v7, :cond_1

    .line 1074
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1075
    iget v0, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_0

    .line 1076
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->d(Landroid/support/v4/app/Fragment;)V

    .line 1077
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1073
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1080
    :cond_1
    return-void
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 747
    if-eqz p2, :cond_1

    .line 748
    iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 749
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 752
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 754
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 755
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 759
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v4/app/h$b;ILjava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1388
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Landroid/support/v4/app/h$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/h$3;-><init>(Landroid/support/v4/app/h;Landroid/view/View;Landroid/support/v4/app/h$b;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1396
    return-void
.end method

.method private a(ILandroid/support/v4/app/h$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 33
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/h$b;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v4, v4, Landroid/support/v4/app/q;->p:Landroid/support/v4/app/m;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/m;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1162
    if-nez v6, :cond_0

    .line 1163
    const/4 v4, 0x0

    .line 1255
    :goto_0
    return v4

    .line 1165
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 1166
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 1168
    move/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 1169
    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 1171
    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/support/v4/app/h;->b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    .line 1172
    const/16 v20, 0x0

    .line 1173
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    if-eqz v7, :cond_3

    .line 1175
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/e/a;

    move-result-object v20

    .line 1176
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/e/a;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1177
    const/4 v7, 0x0

    .line 1178
    const/16 v20, 0x0

    move-object v13, v7

    .line 1193
    :goto_1
    if-nez v12, :cond_5

    if-nez v13, :cond_5

    if-nez v14, :cond_5

    .line 1195
    const/4 v4, 0x0

    goto :goto_0

    .line 1181
    :cond_1
    if-eqz p3, :cond_4

    iget-object v4, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    .line 1184
    :goto_2
    if-eqz v4, :cond_2

    .line 1185
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/e/a;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1186
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/e/a;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1187
    const/4 v13, 0x0

    invoke-virtual {v4, v5, v10, v13}, Landroid/support/v4/app/as;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 1189
    invoke-direct/range {v4 .. v11}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V

    :cond_3
    move-object v13, v7

    goto :goto_1

    .line 1181
    :cond_4
    iget-object v4, v8, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/as;

    goto :goto_2

    .line 1198
    :cond_5
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/h$b;->d:Landroid/view/View;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v14, v9, v0, v1, v4}, Landroid/support/v4/app/h;->a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/e/a;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v26

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    if-eqz v20, :cond_7

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1205
    if-eqz v4, :cond_7

    .line 1206
    if-eqz v26, :cond_6

    .line 1207
    move-object/from16 v0, v26

    invoke-static {v0, v4}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1209
    :cond_6
    if-eqz v13, :cond_7

    .line 1210
    invoke-static {v13, v4}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1216
    :cond_7
    new-instance v15, Landroid/support/v4/app/h$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Landroid/support/v4/app/h$1;-><init>(Landroid/support/v4/app/h;Landroid/support/v4/app/Fragment;)V

    .line 1224
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    new-instance v21, Landroid/support/v4/e/a;

    invoke-direct/range {v21 .. v21}, Landroid/support/v4/e/a;-><init>()V

    .line 1227
    const/4 v4, 0x1

    .line 1228
    if-eqz v8, :cond_8

    .line 1229
    if-eqz p3, :cond_a

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v4

    .line 1232
    :cond_8
    :goto_3
    move-object/from16 v0, v26

    invoke-static {v12, v0, v13, v4}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v30

    .line 1235
    if-eqz v30, :cond_9

    .line 1236
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/h$b;->d:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/h$b;->c:Landroid/support/v4/app/u$a;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/e/a;

    move-object/from16 v18, v0

    move-object v14, v6

    move-object/from16 v22, v11

    invoke-static/range {v12 .. v22}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/u$b;Landroid/view/View;Landroid/support/v4/app/u$a;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1240
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/h;->a(Landroid/view/View;Landroid/support/v4/app/h$b;ILjava/lang/Object;)V

    .line 1244
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/h$b;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1246
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;ILjava/lang/Object;)V

    .line 1248
    move-object/from16 v0, v30

    invoke-static {v6, v0}, Landroid/support/v4/app/u;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1250
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/h$b;->d:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/h$b;->b:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v22, v6

    move-object/from16 v24, v12

    move-object/from16 v25, v19

    move-object/from16 v28, v13

    move-object/from16 v29, v11

    move-object/from16 v32, v21

    invoke-static/range {v22 .. v32}, Landroid/support/v4/app/u;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1255
    :cond_9
    if-eqz v30, :cond_b

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1229
    :cond_a
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v4

    goto :goto_3

    .line 1255
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v4/app/h$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/e/a;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1370
    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    .line 1371
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1372
    if-eqz v1, :cond_0

    .line 1373
    iget-object v2, p0, Landroid/support/v4/app/h;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1374
    invoke-static {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1375
    if-eqz p3, :cond_1

    .line 1376
    iget-object v1, p0, Landroid/support/v4/app/h;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/h;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/e/a;)Landroid/support/v4/e/a;

    move-result-object v0

    .line 1383
    :cond_0
    :goto_0
    return-object v0

    .line 1379
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->a(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1091
    if-nez p0, :cond_0

    .line 1092
    const/4 v0, 0x0

    .line 1094
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/u;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/support/v4/app/h$b;Landroid/support/v4/e/a;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/h$b;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1464
    invoke-virtual {p2}, Landroid/support/v4/e/a;->size()I

    move-result v3

    .line 1465
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1466
    invoke-virtual {p2, v2}, Landroid/support/v4/e/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1467
    invoke-virtual {p2, v2}, Landroid/support/v4/e/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/u;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1468
    if-eqz p3, :cond_0

    .line 1469
    iget-object v4, p1, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/h;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1471
    :cond_0
    iget-object v4, p1, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1474
    :cond_1
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->p:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 833
    :cond_0
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    move-object v3, v0

    .line 791
    :goto_0
    if-eqz v3, :cond_0

    .line 792
    iget v0, v3, Landroid/support/v4/app/h$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 831
    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h$a;

    move-object v3, v0

    goto :goto_0

    .line 794
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 797
    :pswitch_1
    iget-object v1, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 798
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 799
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 800
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 801
    if-eqz v2, :cond_2

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 802
    :cond_2
    if-ne v0, v2, :cond_4

    .line 803
    const/4 v2, 0x0

    .line 804
    iget v0, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 799
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 806
    :cond_4
    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 811
    :cond_5
    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 815
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 818
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 821
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 824
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 827
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 763
    if-eqz p3, :cond_1

    .line 764
    iget v0, p3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 765
    if-eqz v0, :cond_1

    .line 766
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    invoke-virtual {p2, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 769
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_1

    .line 770
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 774
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 621
    iget-boolean v0, p0, Landroid/support/v4/app/h;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/q;->a:Z

    if-eqz v0, :cond_1

    .line 623
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Landroid/support/v4/e/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/e/d;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 626
    const-string v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Landroid/support/v4/app/h;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 628
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->o:Z

    .line 629
    iget-boolean v0, p0, Landroid/support/v4/app/h;->l:Z

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/h;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/h;->p:I

    .line 634
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/q;->a(Ljava/lang/Runnable;Z)V

    .line 635
    iget v0, p0, Landroid/support/v4/app/h;->p:I

    return v0

    .line 632
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/h;->p:I

    goto :goto_0
.end method

.method public a(ZLandroid/support/v4/app/h$b;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/h$b;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/h$b;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/h$b;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 886
    sget-boolean v0, Landroid/support/v4/app/q;->a:Z

    if-eqz v0, :cond_0

    .line 887
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v0, Landroid/support/v4/e/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/e/d;-><init>(Ljava/lang/String;)V

    .line 889
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 890
    const-string v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Landroid/support/v4/app/h;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 893
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/h;->a:Z

    if-eqz v0, :cond_2

    .line 894
    if-nez p2, :cond_3

    .line 895
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    :cond_1
    invoke-direct {p0, p3, p4, v10}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/h$b;

    move-result-object p2

    .line 903
    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Landroid/support/v4/app/h;->b(I)V

    .line 905
    if-eqz p2, :cond_4

    move v7, v2

    .line 906
    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    .line 907
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/h$a;

    move-object v6, v0

    .line 908
    :goto_3
    if-eqz v6, :cond_a

    .line 909
    if-eqz p2, :cond_6

    move v5, v2

    .line 910
    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    .line 911
    :goto_5
    iget v3, v6, Landroid/support/v4/app/h$a;->c:I

    packed-switch v3, :pswitch_data_0

    .line 963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/support/v4/app/h$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_3
    if-nez p1, :cond_2

    .line 899
    iget-object v0, p0, Landroid/support/v4/app/h;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/h;->u:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 905
    :cond_4
    iget v0, p0, Landroid/support/v4/app/h;->k:I

    move v7, v0

    goto :goto_1

    .line 906
    :cond_5
    iget v0, p0, Landroid/support/v4/app/h;->j:I

    move v1, v0

    goto :goto_2

    .line 909
    :cond_6
    iget v0, v6, Landroid/support/v4/app/h$a;->g:I

    move v5, v0

    goto :goto_4

    .line 910
    :cond_7
    iget v0, v6, Landroid/support/v4/app/h$a;->h:I

    goto :goto_5

    .line 913
    :pswitch_0
    iget-object v3, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 914
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 915
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-static {v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;II)V

    .line 967
    :cond_8
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/h$a;->b:Landroid/support/v4/app/h$a;

    move-object v6, v0

    .line 968
    goto :goto_3

    .line 919
    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 920
    if-eqz v3, :cond_9

    .line 921
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 922
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-static {v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v8

    invoke-virtual {v0, v3, v8, v7}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;II)V

    .line 925
    :cond_9
    iget-object v0, v6, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    .line 926
    :goto_7
    iget-object v0, v6, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 927
    iget-object v0, v6, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 928
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 929
    iget-object v8, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v8, v0, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 926
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 934
    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 935
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 936
    iget-object v3, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    .line 939
    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 940
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 941
    iget-object v3, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-static {v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/q;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 945
    :pswitch_4
    iget-object v3, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 946
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 947
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-static {v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 951
    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 952
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 953
    iget-object v3, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-static {v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/q;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 957
    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 958
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 959
    iget-object v3, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-static {v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/q;->d(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 970
    :cond_a
    if-eqz p1, :cond_b

    .line 971
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget v2, v2, Landroid/support/v4/app/q;->n:I

    invoke-static {v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v7, v10}, Landroid/support/v4/app/q;->a(IIIZ)V

    move-object p2, v4

    .line 976
    :cond_b
    iget v0, p0, Landroid/support/v4/app/h;->p:I

    if-ltz v0, :cond_c

    .line 977
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget v1, p0, Landroid/support/v4/app/h;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->c(I)V

    .line 978
    iput v9, p0, Landroid/support/v4/app/h;->p:I

    .line 980
    :cond_c
    return-object p2

    .line 911
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(I)Landroid/support/v4/app/t;
    .locals 0
    .parameter

    .prologue
    .line 512
    iput p1, p0, Landroid/support/v4/app/h;->j:I

    .line 513
    return-object p0
.end method

.method public a(IIII)Landroid/support/v4/app/t;
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    iput p1, p0, Landroid/support/v4/app/h;->f:I

    .line 505
    iput p2, p0, Landroid/support/v4/app/h;->g:I

    .line 506
    iput p3, p0, Landroid/support/v4/app/h;->h:I

    .line 507
    iput p4, p0, Landroid/support/v4/app/h;->i:I

    .line 508
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 405
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 410
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;
    .locals 2
    .parameter

    .prologue
    .line 454
    new-instance v0, Landroid/support/v4/app/h$a;

    invoke-direct {v0}, Landroid/support/v4/app/h$a;-><init>()V

    .line 455
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/h$a;->c:I

    .line 456
    iput-object p1, v0, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 457
    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$a;)V

    .line 459
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 400
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 2
    .parameter

    .prologue
    .line 541
    iget-boolean v0, p0, Landroid/support/v4/app/h;->m:Z

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->l:Z

    .line 546
    iput-object p1, p0, Landroid/support/v4/app/h;->n:Ljava/lang/String;

    .line 547
    return-object p0
.end method

.method a(Landroid/support/v4/app/h$a;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/h$a;

    iput-object p1, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    .line 391
    :goto_0
    iget v0, p0, Landroid/support/v4/app/h;->f:I

    iput v0, p1, Landroid/support/v4/app/h$a;->e:I

    .line 392
    iget v0, p0, Landroid/support/v4/app/h;->g:I

    iput v0, p1, Landroid/support/v4/app/h$a;->f:I

    .line 393
    iget v0, p0, Landroid/support/v4/app/h;->h:I

    iput v0, p1, Landroid/support/v4/app/h$a;->g:I

    .line 394
    iget v0, p0, Landroid/support/v4/app/h;->i:I

    iput v0, p1, Landroid/support/v4/app/h$a;->h:I

    .line 395
    iget v0, p0, Landroid/support/v4/app/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/h;->e:I

    .line 396
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/h$a;

    iput-object v0, p1, Landroid/support/v4/app/h$a;->b:Landroid/support/v4/app/h$a;

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/h$a;

    iput-object p1, v0, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h$a;

    .line 389
    iput-object p1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/h$a;

    goto :goto_0
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->p:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 882
    :cond_0
    return-void

    .line 849
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/h$a;

    move-object v2, v0

    .line 850
    :goto_0
    if-eqz v2, :cond_0

    .line 851
    iget v0, v2, Landroid/support/v4/app/h$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 880
    :goto_1
    iget-object v0, v2, Landroid/support/v4/app/h$a;->b:Landroid/support/v4/app/h$a;

    move-object v2, v0

    goto :goto_0

    .line 853
    :pswitch_0
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 856
    :pswitch_1
    iget-object v0, v2, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, v2, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 858
    iget-object v0, v2, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 857
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 861
    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 864
    :pswitch_2
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 867
    :pswitch_3
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 870
    :pswitch_4
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 873
    :pswitch_5
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 876
    :pswitch_6
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/h;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 258
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 261
    if-eqz p3, :cond_8

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/h;->p:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->o:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    iget v0, p0, Landroid/support/v4/app/h;->j:I

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Landroid/support/v4/app/h;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Landroid/support/v4/app/h;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget v0, p0, Landroid/support/v4/app/h;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/h;->g:I

    if-eqz v0, :cond_2

    .line 272
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Landroid/support/v4/app/h;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget v0, p0, Landroid/support/v4/app/h;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_2
    iget v0, p0, Landroid/support/v4/app/h;->h:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/h;->i:I

    if-eqz v0, :cond_4

    .line 278
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Landroid/support/v4/app/h;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Landroid/support/v4/app/h;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_4
    iget v0, p0, Landroid/support/v4/app/h;->q:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 284
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Landroid/support/v4/app/h;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/h;->r:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    :cond_6
    iget v0, p0, Landroid/support/v4/app/h;->s:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/h;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 290
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Landroid/support/v4/app/h;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Landroid/support/v4/app/h;->t:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    if-eqz v0, :cond_10

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    move v2, v1

    move-object v3, v0

    .line 302
    :goto_0
    if-eqz v3, :cond_10

    .line 304
    iget v0, v3, Landroid/support/v4/app/h$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Landroid/support/v4/app/h$a;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 316
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    if-eqz p3, :cond_c

    .line 319
    iget v0, v3, Landroid/support/v4/app/h$a;->e:I

    if-nez v0, :cond_9

    iget v0, v3, Landroid/support/v4/app/h$a;->f:I

    if-eqz v0, :cond_a

    .line 320
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget v0, v3, Landroid/support/v4/app/h$a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v0, v3, Landroid/support/v4/app/h$a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :cond_a
    iget v0, v3, Landroid/support/v4/app/h$a;->g:I

    if-nez v0, :cond_b

    iget v0, v3, Landroid/support/v4/app/h$a;->h:I

    if-eqz v0, :cond_c

    .line 326
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v0, v3, Landroid/support/v4/app/h$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget v0, v3, Landroid/support/v4/app/h$a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_c
    iget-object v0, v3, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    .line 333
    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 334
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object v5, v3, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 336
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    .line 306
    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    .line 307
    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    .line 308
    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    .line 309
    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    .line 310
    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    .line 311
    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    .line 312
    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    .line 338
    :cond_d
    if-nez v0, :cond_e

    .line 339
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :cond_f
    iget-object v3, v3, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h$a;

    .line 348
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_10
    return-void

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/h;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;

    move-result-object v0

    return-object v0
.end method

.method public b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 450
    return-object p0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;
    .locals 2
    .parameter

    .prologue
    .line 463
    new-instance v0, Landroid/support/v4/app/h$a;

    invoke-direct {v0}, Landroid/support/v4/app/h$a;-><init>()V

    .line 464
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/h$a;->c:I

    .line 465
    iput-object p1, v0, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 466
    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$a;)V

    .line 468
    return-object p0
.end method

.method b(I)V
    .locals 6
    .parameter

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/support/v4/app/h;->l:Z

    if-nez v0, :cond_1

    .line 610
    :cond_0
    return-void

    .line 591
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/q;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    move-object v2, v0

    .line 594
    :goto_0
    if-eqz v2, :cond_0

    .line 595
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 597
    sget-boolean v0, Landroid/support/v4/app/q;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 601
    iget-object v0, v2, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 602
    iget-object v0, v2, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 603
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 604
    sget-boolean v3, Landroid/support/v4/app/q;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 608
    :cond_5
    iget-object v0, v2, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h$a;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method public c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;
    .locals 2
    .parameter

    .prologue
    .line 472
    new-instance v0, Landroid/support/v4/app/h$a;

    invoke-direct {v0}, Landroid/support/v4/app/h$a;-><init>()V

    .line 473
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/h$a;->c:I

    .line 474
    iput-object p1, v0, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 475
    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$a;)V

    .line 477
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Landroid/support/v4/app/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;
    .locals 2
    .parameter

    .prologue
    .line 481
    new-instance v0, Landroid/support/v4/app/h$a;

    invoke-direct {v0}, Landroid/support/v4/app/h$a;-><init>()V

    .line 482
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/h$a;->c:I

    .line 483
    iput-object p1, v0, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 484
    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$a;)V

    .line 486
    return-object p0
.end method

.method public e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/t;
    .locals 2
    .parameter

    .prologue
    .line 490
    new-instance v0, Landroid/support/v4/app/h$a;

    invoke-direct {v0}, Landroid/support/v4/app/h$a;-><init>()V

    .line 491
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/h$a;->c:I

    .line 492
    iput-object p1, v0, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 493
    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$a;)V

    .line 495
    return-object p0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 639
    sget-boolean v0, Landroid/support/v4/app/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/h;->l:Z

    if-eqz v0, :cond_1

    .line 642
    iget v0, p0, Landroid/support/v4/app/h;->p:I

    if-gez v0, :cond_1

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->b(I)V

    .line 649
    const/4 v0, 0x0

    .line 652
    sget-boolean v1, Landroid/support/v4/app/h;->a:Z

    if-eqz v1, :cond_f

    .line 653
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 654
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 656
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/h;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 658
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/h;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/h$b;

    move-result-object v0

    move-object v8, v0

    .line 661
    :goto_0
    if-eqz v8, :cond_2

    const/4 v0, 0x0

    move v7, v0

    .line 662
    :goto_1
    if-eqz v8, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 663
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    move-object v6, v0

    .line 664
    :goto_3
    if-eqz v6, :cond_d

    .line 665
    if-eqz v8, :cond_4

    const/4 v0, 0x0

    move v5, v0

    .line 666
    :goto_4
    if-eqz v8, :cond_5

    const/4 v0, 0x0

    move v2, v0

    .line 667
    :goto_5
    iget v0, v6, Landroid/support/v4/app/h$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/support/v4/app/h$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_2
    iget v0, p0, Landroid/support/v4/app/h;->k:I

    move v7, v0

    goto :goto_1

    .line 662
    :cond_3
    iget v0, p0, Landroid/support/v4/app/h;->j:I

    move v1, v0

    goto :goto_2

    .line 665
    :cond_4
    iget v0, v6, Landroid/support/v4/app/h$a;->e:I

    move v5, v0

    goto :goto_4

    .line 666
    :cond_5
    iget v0, v6, Landroid/support/v4/app/h$a;->f:I

    move v2, v0

    goto :goto_5

    .line 669
    :pswitch_0
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 670
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 671
    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 735
    :cond_6
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h$a;

    move-object v6, v0

    .line 736
    goto :goto_3

    .line 674
    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 675
    iget v9, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 676
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 677
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_7
    if-ltz v4, :cond_c

    .line 678
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 679
    sget-boolean v10, Landroid/support/v4/app/q;->a:Z

    if-eqz v10, :cond_7

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP_REPLACE: adding="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " old="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_7
    iget v10, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v10, v9, :cond_b

    .line 682
    if-ne v0, v3, :cond_8

    .line 683
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 677
    :goto_8
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move-object v3, v0

    goto :goto_7

    .line 685
    :cond_8
    iget-object v10, v6, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    if-nez v10, :cond_9

    .line 686
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    .line 688
    :cond_9
    iget-object v10, v6, Landroid/support/v4/app/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 690
    iget-boolean v10, p0, Landroid/support/v4/app/h;->l:Z

    if-eqz v10, :cond_a

    .line 691
    iget v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 692
    sget-boolean v10, Landroid/support/v4/app/q;->a:Z

    if-eqz v10, :cond_a

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bump nesting of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_a
    iget-object v10, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v10, v0, v1, v7}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_b
    move-object v0, v3

    goto :goto_8

    .line 700
    :cond_c
    if-eqz v3, :cond_6

    .line 701
    iput v5, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 702
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_6

    .line 706
    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 707
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 708
    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 711
    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 712
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 713
    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 716
    :pswitch_4
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 717
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 718
    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/q;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 721
    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 722
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 723
    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/q;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 726
    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/h$a;->d:Landroid/support/v4/app/Fragment;

    .line 727
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 728
    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/q;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 738
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget-object v2, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    iget v2, v2, Landroid/support/v4/app/q;->n:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/support/v4/app/q;->a(IIIZ)V

    .line 740
    iget-boolean v0, p0, Landroid/support/v4/app/h;->l:Z

    if-eqz v0, :cond_e

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/h;)V

    .line 743
    :cond_e
    return-void

    :cond_f
    move-object v8, v0

    goto/16 :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Landroid/support/v4/app/h;->p:I

    if-ltz v1, :cond_0

    .line 245
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Landroid/support/v4/app/h;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/h;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Landroid/support/v4/app/h;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
