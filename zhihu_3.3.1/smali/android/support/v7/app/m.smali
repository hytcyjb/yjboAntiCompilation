.class Landroid/support/v7/app/m;
.super Landroid/support/v7/app/i;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/o;
.implements Landroid/support/v7/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/m$c;,
        Landroid/support/v7/app/m$d;,
        Landroid/support/v7/app/m$a;,
        Landroid/support/v7/app/m$e;,
        Landroid/support/v7/app/m$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:[Landroid/support/v7/app/m$d;

.field private C:Landroid/support/v7/app/m$d;

.field private D:Z

.field private E:Z

.field private F:I

.field private final G:Ljava/lang/Runnable;

.field private H:Z

.field private I:Landroid/graphics/Rect;

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/support/v7/app/p;

.field m:Landroid/support/v7/view/b;

.field n:Landroid/support/v7/widget/ActionBarContextView;

.field o:Landroid/widget/PopupWindow;

.field p:Ljava/lang/Runnable;

.field q:Landroid/support/v4/view/bc;

.field private r:Landroid/support/v7/widget/t;

.field private s:Landroid/support/v7/app/m$a;

.field private t:Landroid/support/v7/app/m$e;

.field private u:Z

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/i;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    .line 121
    new-instance v0, Landroid/support/v7/app/m$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/m$1;-><init>(Landroid/support/v7/app/m;)V

    iput-object v0, p0, Landroid/support/v7/app/m;->G:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/m;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Landroid/support/v7/app/m;->F:I

    return v0
.end method

.method private a(IZ)Landroid/support/v7/app/m$d;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1512
    iget-object v0, p0, Landroid/support/v7/app/m;->B:[Landroid/support/v7/app/m$d;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1513
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/m$d;

    .line 1514
    if-eqz v0, :cond_1

    .line 1515
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1517
    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/m;->B:[Landroid/support/v7/app/m$d;

    move-object v0, v1

    .line 1520
    :cond_2
    aget-object v1, v0, p1

    .line 1521
    if-nez v1, :cond_3

    .line 1522
    new-instance v1, Landroid/support/v7/app/m$d;

    invoke-direct {v1, p1}, Landroid/support/v7/app/m$d;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1524
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/m;Landroid/view/Menu;)Landroid/support/v7/app/m$d;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->a(Landroid/view/Menu;)Landroid/support/v7/app/m$d;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/app/m$d;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1499
    iget-object v3, p0, Landroid/support/v7/app/m;->B:[Landroid/support/v7/app/m$d;

    .line 1500
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1501
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1502
    aget-object v1, v3, v2

    .line 1503
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1507
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1500
    goto :goto_0

    .line 1501
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1507
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(ILandroid/support/v7/app/m$d;Landroid/view/Menu;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1472
    if-nez p3, :cond_1

    .line 1474
    if-nez p2, :cond_0

    .line 1475
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/m;->B:[Landroid/support/v7/app/m$d;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1476
    iget-object v0, p0, Landroid/support/v7/app/m;->B:[Landroid/support/v7/app/m$d;

    aget-object p2, v0, p1

    .line 1480
    :cond_0
    if-eqz p2, :cond_1

    .line 1482
    iget-object p3, p2, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    .line 1487
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/m$d;->o:Z

    if-nez v0, :cond_3

    .line 1496
    :cond_2
    :goto_0
    return-void

    .line 1490
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1494
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1039
    iget-boolean v0, p1, Landroid/support/v7/app/m$d;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    if-nez v0, :cond_2

    .line 1046
    iget-object v4, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    .line 1047
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1048
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 1050
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 1053
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 1058
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/m;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1059
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/app/m$d;->a:I

    iget-object v5, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1061
    invoke-direct {p0, p1, v9}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1048
    goto :goto_1

    :cond_4
    move v4, v3

    .line 1050
    goto :goto_2

    .line 1065
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1066
    if-eqz v8, :cond_0

    .line 1071
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/app/m$d;->q:Z

    if-eqz v0, :cond_c

    .line 1077
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 1079
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1087
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->c(Landroid/support/v7/app/m$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/m$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1092
    if-nez v0, :cond_e

    .line 1093
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1096
    :goto_4
    iget v0, p1, Landroid/support/v7/app/m$d;->b:I

    .line 1097
    iget-object v4, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1099
    iget-object v0, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 1101
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1103
    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    iget-object v0, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1110
    iget-object v0, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 1121
    :cond_a
    :goto_5
    iput-boolean v3, p1, Landroid/support/v7/app/m$d;->n:Z

    .line 1123
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/m$d;->d:I

    iget v4, p1, Landroid/support/v7/app/m$d;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x82

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1130
    iget v1, p1, Landroid/support/v7/app/m$d;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1131
    iget v1, p1, Landroid/support/v7/app/m$d;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1133
    iget-object v1, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    iput-boolean v9, p1, Landroid/support/v7/app/m$d;->o:Z

    goto/16 :goto_0

    .line 1081
    :cond_b
    iget-boolean v0, p1, Landroid/support/v7/app/m$d;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1083
    iget-object v0, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 1112
    :cond_c
    iget-object v0, p1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1115
    iget-object v0, p1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto :goto_4
.end method

.method private a(Landroid/support/v7/app/m$d;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1375
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    iget-object v0, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-direct {p0, v0}, Landroid/support/v7/app/m;->b(Landroid/support/v7/view/menu/f;)V

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1382
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/m$d;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1383
    iget-object v1, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1385
    if-eqz p2, :cond_2

    .line 1386
    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/support/v7/app/m;->a(ILandroid/support/v7/app/m$d;Landroid/view/Menu;)V

    .line 1390
    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/app/m$d;->m:Z

    .line 1391
    iput-boolean v2, p1, Landroid/support/v7/app/m$d;->n:Z

    .line 1392
    iput-boolean v2, p1, Landroid/support/v7/app/m$d;->o:Z

    .line 1395
    iput-object v3, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/m$d;->q:Z

    .line 1401
    iget-object v0, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    if-ne v0, p1, :cond_0

    .line 1402
    iput-object v3, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/m;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->e(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/m;ILandroid/support/v7/app/m$d;Landroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/m;->a(ILandroid/support/v7/app/m$d;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/m;Landroid/support/v7/app/m$d;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/m;Landroid/support/v7/view/menu/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->b(Landroid/support/v7/view/menu/f;)V

    return-void
.end method

.method private a(Landroid/support/v7/view/menu/f;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1145
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/at;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1149
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/m;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1151
    iget-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v1}, Landroid/support/v7/widget/t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 1152
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1154
    iget-boolean v1, p0, Landroid/support/v7/app/m;->E:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/m;->F:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1156
    iget-object v1, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/m;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1157
    iget-object v1, p0, Landroid/support/v7/app/m;->G:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1160
    :cond_2
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v1

    .line 1164
    iget-object v2, v1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/app/m$d;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1166
    iget-object v1, v1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1167
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->g()Z

    .line 1186
    :cond_3
    :goto_0
    return-void

    .line 1171
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v1}, Landroid/support/v7/widget/t;->h()Z

    .line 1172
    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1173
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v1

    .line 1174
    iget-object v1, v1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1180
    :cond_5
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    .line 1182
    iput-boolean v3, v0, Landroid/support/v7/app/m$d;->q:Z

    .line 1183
    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    .line 1185
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/m$d;)Z
    .locals 2
    .parameter

    .prologue
    .line 1138
    invoke-virtual {p0}, Landroid/support/v7/app/m;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/m$d;->a(Landroid/content/Context;)V

    .line 1139
    new-instance v0, Landroid/support/v7/app/m$c;

    iget-object v1, p1, Landroid/support/v7/app/m$d;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/m$c;-><init>(Landroid/support/v7/app/m;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    .line 1140
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/m$d;->c:I

    .line 1141
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/support/v7/app/m$d;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1529
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return v0

    .line 1537
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/m$d;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-eqz v1, :cond_3

    .line 1539
    iget-object v0, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/f;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1542
    :cond_3
    if-eqz v0, :cond_0

    .line 1544
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-nez v1, :cond_0

    .line 1545
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/m;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/support/v7/app/m;->E:Z

    return p1
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 971
    if-nez p1, :cond_0

    move v0, v2

    .line 989
    :goto_0
    return v0

    .line 975
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    .line 977
    :goto_1
    if-nez v1, :cond_1

    .line 982
    const/4 v0, 0x1

    goto :goto_0

    .line 983
    :cond_1
    if-eq v1, v3, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 989
    goto :goto_0

    .line 991
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/app/m;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Landroid/support/v7/app/m;->F:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/app/m;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v7/app/m;->x()V

    return-void
.end method

.method private b(Landroid/support/v7/view/menu/f;)V
    .locals 2
    .parameter

    .prologue
    .line 1357
    iget-boolean v0, p0, Landroid/support/v7/app/m;->A:Z

    if-eqz v0, :cond_0

    .line 1368
    :goto_0
    return-void

    .line 1361
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/m;->A:Z

    .line 1362
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->j()V

    .line 1363
    invoke-virtual {p0}, Landroid/support/v7/app/m;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1364
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1365
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1367
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/m;->A:Z

    goto :goto_0
.end method

.method private b(Landroid/support/v7/app/m$d;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1189
    iget-object v1, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    .line 1192
    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_4

    .line 1194
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1195
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1196
    sget v0, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1198
    const/4 v0, 0x0

    .line 1199
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 1200
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1201
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1202
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1203
    sget v4, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1210
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1211
    if-nez v0, :cond_1

    .line 1212
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1213
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1215
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1218
    if-eqz v2, :cond_4

    .line 1219
    new-instance v0, Landroid/support/v7/view/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 1220
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1224
    :goto_1
    new-instance v1, Landroid/support/v7/view/menu/f;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;)V

    .line 1225
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/f$a;)V

    .line 1226
    invoke-virtual {p1, v1}, Landroid/support/v7/app/m$d;->a(Landroid/support/v7/view/menu/f;)V

    .line 1228
    return v5

    .line 1206
    :cond_3
    sget v4, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1253
    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return v2

    .line 1258
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/m$d;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1259
    goto :goto_0

    .line 1262
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    if-eq v0, p1, :cond_3

    .line 1264
    iget-object v0, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    .line 1267
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/m;->p()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1269
    if-eqz v3, :cond_4

    .line 1270
    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    .line 1273
    :cond_4
    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/m$d;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_c

    :cond_5
    move v0, v1

    .line 1276
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v4, :cond_6

    .line 1279
    iget-object v4, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v4}, Landroid/support/v7/widget/t;->i()V

    .line 1282
    :cond_6
    iget-object v4, p1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    if-nez v4, :cond_12

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/app/m;->l()Landroid/support/v7/app/a;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/q;

    if-nez v4, :cond_12

    .line 1286
    :cond_7
    iget-object v4, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroid/support/v7/app/m$d;->r:Z

    if-eqz v4, :cond_e

    .line 1287
    :cond_8
    iget-object v4, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-nez v4, :cond_9

    .line 1288
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-eqz v4, :cond_0

    .line 1293
    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v4, :cond_b

    .line 1294
    iget-object v4, p0, Landroid/support/v7/app/m;->s:Landroid/support/v7/app/m$a;

    if-nez v4, :cond_a

    .line 1295
    new-instance v4, Landroid/support/v7/app/m$a;

    invoke-direct {v4, p0, v7}, Landroid/support/v7/app/m$a;-><init>(Landroid/support/v7/app/m;Landroid/support/v7/app/m$1;)V

    iput-object v4, p0, Landroid/support/v7/app/m;->s:Landroid/support/v7/app/m$a;

    .line 1297
    :cond_a
    iget-object v4, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    iget-object v5, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    iget-object v6, p0, Landroid/support/v7/app/m;->s:Landroid/support/v7/app/m$a;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/t;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/l$a;)V

    .line 1302
    :cond_b
    iget-object v4, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/f;->g()V

    .line 1303
    iget v4, p1, Landroid/support/v7/app/m$d;->a:I

    iget-object v5, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1305
    invoke-virtual {p1, v7}, Landroid/support/v7/app/m$d;->a(Landroid/support/v7/view/menu/f;)V

    .line 1307
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/app/m;->s:Landroid/support/v7/app/m$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/t;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/l$a;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1273
    goto :goto_1

    .line 1315
    :cond_d
    iput-boolean v2, p1, Landroid/support/v7/app/m$d;->r:Z

    .line 1320
    :cond_e
    iget-object v4, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/f;->g()V

    .line 1324
    iget-object v4, p1, Landroid/support/v7/app/m$d;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1325
    iget-object v4, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    iget-object v5, p1, Landroid/support/v7/app/m$d;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/f;->d(Landroid/os/Bundle;)V

    .line 1326
    iput-object v7, p1, Landroid/support/v7/app/m$d;->s:Landroid/os/Bundle;

    .line 1330
    :cond_f
    iget-object v4, p1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1331
    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_10

    .line 1334
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/app/m;->s:Landroid/support/v7/app/m$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/t;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/l$a;)V

    .line 1336
    :cond_10
    iget-object v0, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->h()V

    goto/16 :goto_0

    .line 1341
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_14

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Landroid/support/v7/app/m$d;->p:Z

    .line 1344
    iget-object v0, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    iget-boolean v3, p1, Landroid/support/v7/app/m$d;->p:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/f;->setQwertyMode(Z)V

    .line 1345
    iget-object v0, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->h()V

    .line 1349
    :cond_12
    iput-boolean v1, p1, Landroid/support/v7/app/m$d;->m:Z

    .line 1350
    iput-boolean v2, p1, Landroid/support/v7/app/m$d;->n:Z

    .line 1351
    iput-object p1, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    move v2, v1

    .line 1353
    goto/16 :goto_0

    .line 1341
    :cond_13
    const/4 v0, -0x1

    goto :goto_2

    :cond_14
    move v0, v2

    .line 1343
    goto :goto_3
.end method

.method static synthetic c(Landroid/support/v7/app/m;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->f(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1371
    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    .line 1372
    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/m;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v7/app/m;->v()V

    return-void
.end method

.method private c(Landroid/support/v7/app/m$d;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1232
    iget-object v0, p1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p1, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    .line 1249
    :goto_0
    return v1

    .line 1237
    :cond_0
    iget-object v0, p1, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-nez v0, :cond_1

    move v1, v2

    .line 1238
    goto :goto_0

    .line 1241
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/m;->t:Landroid/support/v7/app/m$e;

    if-nez v0, :cond_2

    .line 1242
    new-instance v0, Landroid/support/v7/app/m$e;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/m$e;-><init>(Landroid/support/v7/app/m;Landroid/support/v7/app/m$1;)V

    iput-object v0, p0, Landroid/support/v7/app/m;->t:Landroid/support/v7/app/m$e;

    .line 1245
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/m;->t:Landroid/support/v7/app/m$e;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/m$d;->a(Landroid/support/v7/view/menu/l$a;)Landroid/support/v7/view/menu/m;

    move-result-object v0

    .line 1247
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    .line 1249
    iget-object v0, p1, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1553
    iget v0, p0, Landroid/support/v7/app/m;->F:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/m;->F:I

    .line 1555
    iget-boolean v0, p0, Landroid/support/v7/app/m;->E:Z

    if-nez v0, :cond_0

    .line 1556
    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/m;->G:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1557
    iput-boolean v2, p0, Landroid/support/v7/app/m;->E:Z

    .line 1559
    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/support/v7/app/m;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->c(I)V

    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1407
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    .line 1409
    iget-boolean v1, v0, Landroid/support/v7/app/m$d;->o:Z

    if-nez v1, :cond_0

    .line 1410
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1562
    invoke-direct {p0, p1, v4}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    .line 1564
    iget-object v1, v0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-eqz v1, :cond_1

    .line 1565
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1566
    iget-object v2, v0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/f;->c(Landroid/os/Bundle;)V

    .line 1567
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1568
    iput-object v1, v0, Landroid/support/v7/app/m$d;->s:Landroid/os/Bundle;

    .line 1571
    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/f;->g()V

    .line 1572
    iget-object v1, v0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/f;->clear()V

    .line 1574
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/m$d;->r:Z

    .line 1575
    iput-boolean v4, v0, Landroid/support/v7/app/m$d;->q:Z

    .line 1578
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_3

    .line 1580
    invoke-direct {p0, v3, v3}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_3

    .line 1582
    iput-boolean v3, v0, Landroid/support/v7/app/m$d;->m:Z

    .line 1583
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z

    .line 1586
    :cond_3
    return-void
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1418
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1467
    :goto_0
    return v0

    .line 1423
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v3

    .line 1424
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/at;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1427
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1428
    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1429
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->g()Z

    move-result v2

    .line 1458
    :goto_1
    if-eqz v2, :cond_1

    .line 1459
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1461
    if-eqz v0, :cond_6

    .line 1462
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 1467
    goto :goto_0

    .line 1432
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->h()Z

    move-result v2

    goto :goto_1

    .line 1435
    :cond_3
    iget-boolean v0, v3, Landroid/support/v7/app/m$d;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Landroid/support/v7/app/m$d;->n:Z

    if-eqz v0, :cond_5

    .line 1438
    :cond_4
    iget-boolean v0, v3, Landroid/support/v7/app/m$d;->o:Z

    .line 1440
    invoke-direct {p0, v3, v2}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    move v2, v0

    goto :goto_1

    .line 1441
    :cond_5
    iget-boolean v0, v3, Landroid/support/v7/app/m$d;->m:Z

    if-eqz v0, :cond_7

    .line 1443
    iget-boolean v0, v3, Landroid/support/v7/app/m$d;->r:Z

    if-eqz v0, :cond_8

    .line 1446
    iput-boolean v1, v3, Landroid/support/v7/app/m$d;->m:Z

    .line 1447
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1450
    :goto_3
    if-eqz v0, :cond_7

    .line 1452
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1464
    :cond_6
    const-string v0, "AppCompatDelegate"

    const-string v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private f(I)I
    .locals 8
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1595
    .line 1597
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1598
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1599
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1603
    iget-object v1, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1604
    iget-object v1, p0, Landroid/support/v7/app/m;->I:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1605
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/m;->I:Landroid/graphics/Rect;

    .line 1606
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/m;->J:Landroid/graphics/Rect;

    .line 1608
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/m;->I:Landroid/graphics/Rect;

    .line 1609
    iget-object v4, p0, Landroid/support/v7/app/m;->J:Landroid/graphics/Rect;

    .line 1610
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1612
    iget-object v5, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/as;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1613
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1614
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1616
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1618
    iget-object v1, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1619
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    .line 1620
    iget-object v1, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/a/a$c;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1622
    iget-object v1, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1636
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1642
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/m;->j:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1652
    :goto_3
    if-eqz v3, :cond_2

    .line 1653
    iget-object v3, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 1657
    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1658
    iget-object v1, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1613
    goto :goto_0

    .line 1626
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1627
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1628
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1629
    iget-object v4, p0, Landroid/support/v7/app/m;->x:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1636
    goto :goto_2

    .line 1647
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1649
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 1658
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method private g(I)I
    .locals 2
    .parameter

    .prologue
    .line 1672
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1673
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/16 p1, 0x6c

    .line 1682
    :cond_0
    :goto_0
    return p1

    .line 1676
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1677
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-boolean v0, p0, Landroid/support/v7/app/m;->u:Z

    if-nez v0, :cond_2

    .line 300
    invoke-direct {p0}, Landroid/support/v7/app/m;->t()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    .line 303
    invoke-virtual {p0}, Landroid/support/v7/app/m;->q()Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Landroid/support/v7/app/m;->b(Ljava/lang/CharSequence;)V

    .line 308
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/m;->u()V

    .line 310
    iget-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/m;->a(Landroid/view/ViewGroup;)V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/m;->u:Z

    .line 319
    invoke-direct {p0, v2, v2}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-nez v0, :cond_2

    .line 321
    :cond_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroid/support/v7/app/m;->d(I)V

    .line 324
    :cond_2
    return-void
.end method

.method private t()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 327
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/a/a$k;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 329
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    invoke-virtual {p0, v4}, Landroid/support/v7/app/m;->b(I)Z

    .line 341
    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {p0, v6}, Landroid/support/v7/app/m;->b(I)Z

    .line 344
    :cond_2
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/m;->b(I)Z

    .line 347
    :cond_3
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/m;->k:Z

    .line 348
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 354
    iget-boolean v1, p0, Landroid/support/v7/app/m;->l:Z

    if-nez v1, :cond_a

    .line 355
    iget-boolean v1, p0, Landroid/support/v7/app/m;->k:Z

    if-eqz v1, :cond_5

    .line 357
    sget v1, Landroid/support/v7/a/a$h;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 361
    iput-boolean v5, p0, Landroid/support/v7/app/m;->i:Z

    iput-boolean v5, p0, Landroid/support/v7/app/m;->h:Z

    move-object v2, v0

    .line 442
    :goto_1
    if-nez v2, :cond_d

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/m;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/m;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/m;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/m;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/m;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_4
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/support/v7/app/m;->b(I)Z

    goto/16 :goto_0

    .line 362
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/m;->h:Z

    if-eqz v0, :cond_11

    .line 368
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 369
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 372
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 373
    new-instance v0, Landroid/support/v7/view/d;

    iget-object v2, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 379
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$h;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 382
    sget v1, Landroid/support/v7/a/a$f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/t;

    iput-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    .line 384
    iget-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-virtual {p0}, Landroid/support/v7/app/m;->p()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/t;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 389
    iget-boolean v1, p0, Landroid/support/v7/app/m;->i:Z

    if-eqz v1, :cond_6

    .line 390
    iget-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v1, v6}, Landroid/support/v7/widget/t;->a(I)V

    .line 392
    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/app/m;->y:Z

    if-eqz v1, :cond_7

    .line 393
    iget-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/t;->a(I)V

    .line 395
    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/app/m;->z:Z

    if-eqz v1, :cond_8

    .line 396
    iget-object v1, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/t;->a(I)V

    :cond_8
    move-object v2, v0

    .line 398
    goto/16 :goto_1

    .line 375
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    goto :goto_2

    .line 400
    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/app/m;->j:Z

    if-eqz v1, :cond_b

    .line 401
    sget v1, Landroid/support/v7/a/a$h;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 407
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 410
    new-instance v0, Landroid/support/v7/app/m$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/m$2;-><init>(Landroid/support/v7/app/m;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 404
    :cond_b
    sget v1, Landroid/support/v7/a/a$h;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 432
    check-cast v0, Landroid/support/v7/widget/x;

    new-instance v2, Landroid/support/v7/app/m$3;

    invoke-direct {v2, p0}, Landroid/support/v7/app/m$3;-><init>(Landroid/support/v7/app/m;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/x;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/x$a;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 453
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-nez v0, :cond_e

    .line 454
    sget v0, Landroid/support/v7/a/a$f;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/m;->w:Landroid/widget/TextView;

    .line 458
    :cond_e
    invoke-static {v2}, Landroid/support/v7/widget/as;->b(Landroid/view/View;)V

    .line 460
    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    sget v1, Landroid/support/v7/a/a$f;->action_bar_activity_content:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    .line 466
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 467
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 468
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 469
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 473
    :cond_f
    iget-object v4, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 477
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 478
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 482
    instance-of v4, v0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 483
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 486
    :cond_10
    new-instance v0, Landroid/support/v7/app/m$4;

    invoke-direct {v0, p0}, Landroid/support/v7/app/m$4;-><init>(Landroid/support/v7/app/m;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$a;)V

    .line 496
    return-object v2

    :cond_11
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private u()V
    .locals 5

    .prologue
    .line 502
    iget-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 508
    iget-object v1, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->a(IIII)V

    .line 513
    iget-object v1, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/a/a$k;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 514
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 515
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 517
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 521
    :cond_0
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 525
    :cond_1
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 526
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 529
    :cond_2
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    sget v2, Landroid/support/v7/a/a$k;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 533
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 536
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->b()V

    .line 827
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 1665
    iget-boolean v0, p0, Landroid/support/v7/app/m;->u:Z

    if-eqz v0, :cond_0

    .line 1666
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1669
    :cond_0
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1690
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0}, Landroid/support/v7/widget/t;->j()V

    .line 1694
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1695
    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/m;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1696
    iget-object v0, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    .line 1706
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/app/m;->v()V

    .line 1708
    invoke-direct {p0, v2, v2}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    .line 1709
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-eqz v1, :cond_3

    .line 1710
    iget-object v0, v0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->close()V

    .line 1712
    :cond_3
    return-void

    .line 1699
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 695
    invoke-direct {p0}, Landroid/support/v7/app/m;->v()V

    .line 696
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 700
    :cond_0
    new-instance v4, Landroid/support/v7/app/m$b;

    invoke-direct {v4, p0, p1}, Landroid/support/v7/app/m$b;-><init>(Landroid/support/v7/app/m;Landroid/support/v7/view/b$a;)V

    .line 702
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/g;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v0

    if-nez v0, :cond_9

    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/g;

    invoke-interface {v0, v4}, Landroid/support/v7/app/g;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 710
    :goto_0
    if-eqz v0, :cond_3

    .line 711
    iput-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    .line 817
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/g;

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/g;

    iget-object v1, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    invoke-interface {v0, v1}, Landroid/support/v7/app/g;->a(Landroid/support/v7/view/b;)V

    .line 820
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    return-object v0

    .line 705
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 713
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_4

    .line 714
    iget-boolean v0, p0, Landroid/support/v7/app/m;->k:Z

    if-eqz v0, :cond_6

    .line 716
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 717
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 718
    sget v6, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v0, v6, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 721
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_5

    .line 722
    iget-object v6, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 723
    invoke-virtual {v6, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 724
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 726
    new-instance v0, Landroid/support/v7/view/d;

    iget-object v7, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-direct {v0, v7, v2}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 727
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 732
    :goto_2
    new-instance v6, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 733
    new-instance v6, Landroid/widget/PopupWindow;

    sget v7, Landroid/support/v7/a/a$a;->actionModePopupWindowStyle:I

    invoke-direct {v6, v0, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    .line 735
    iget-object v6, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/support/v4/widget/r;->a(Landroid/widget/PopupWindow;I)V

    .line 737
    iget-object v6, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 738
    iget-object v6, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 740
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroid/support/v7/a/a$a;->actionBarSize:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 742
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 744
    iget-object v5, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 745
    iget-object v0, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 746
    new-instance v0, Landroid/support/v7/app/m$5;

    invoke-direct {v0, p0}, Landroid/support/v7/app/m$5;-><init>(Landroid/support/v7/app/m;)V

    iput-object v0, p0, Landroid/support/v7/app/m;->p:Ljava/lang/Runnable;

    .line 780
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 781
    invoke-direct {p0}, Landroid/support/v7/app/m;->v()V

    .line 782
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->c()V

    .line 783
    new-instance v5, Landroid/support/v7/view/e;

    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    invoke-direct {v5, v6, v7, v4, v0}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/b$a;Z)V

    .line 785
    invoke-virtual {v5}, Landroid/support/v7/view/b;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 786
    invoke-virtual {v5}, Landroid/support/v7/view/b;->d()V

    .line 787
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/support/v7/view/b;)V

    .line 788
    iput-object v5, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    .line 789
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 790
    iget-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(F)Landroid/support/v4/view/bc;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    .line 791
    iget-object v0, p0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    new-instance v1, Landroid/support/v7/app/m$6;

    invoke-direct {v1, p0}, Landroid/support/v7/app/m$6;-><init>(Landroid/support/v7/app/m;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    .line 809
    iget-object v0, p0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/m;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 729
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    goto/16 :goto_2

    .line 770
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    sget v5, Landroid/support/v7/a/a$f;->action_mode_bar_stub:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 772
    if-eqz v0, :cond_4

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/app/m;->m()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 775
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 783
    goto :goto_4

    .line 813
    :cond_8
    iput-object v3, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    goto/16 :goto_1

    :cond_9
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1016
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/m;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_0

    .line 1022
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/m;->c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/support/v7/app/m;->s()V

    .line 265
    iget-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 266
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 267
    iget-object v1, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 268
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 269
    return-void
.end method

.method a(ILandroid/view/Menu;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 613
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 614
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->e(Z)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    if-nez p1, :cond_0

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v0

    .line 622
    iget-boolean v1, v0, Landroid/support/v7/app/m$d;->o:Z

    if-eqz v1, :cond_0

    .line 623
    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-boolean v0, p0, Landroid/support/v7/app/m;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/m;->u:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    .line 235
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/y;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/support/v7/app/m;->l()Landroid/support/v7/app/a;

    move-result-object v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    iput-boolean v1, p0, Landroid/support/v7/app/m;->H:Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/f;)V
    .locals 1
    .parameter

    .prologue
    .line 654
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/view/menu/f;Z)V

    .line 655
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/support/v7/app/m;->s()V

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 257
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 258
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 260
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/support/v7/app/m;->s()V

    .line 274
    iget-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 275
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 276
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 278
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 849
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v2

    .line 850
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 880
    :cond_0
    :goto_0
    return v0

    .line 856
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    if-eqz v2, :cond_2

    .line 857
    iget-object v2, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 859
    if-eqz v2, :cond_2

    .line 860
    iget-object v1, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    iput-boolean v0, v1, Landroid/support/v7/app/m$d;->n:Z

    goto :goto_0

    .line 871
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/m;->C:Landroid/support/v7/app/m$d;

    if-nez v2, :cond_3

    .line 872
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v2

    .line 873
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m$d;Landroid/view/KeyEvent;)Z

    .line 874
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 875
    iput-boolean v1, v2, Landroid/support/v7/app/m$d;->m:Z

    .line 876
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 880
    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 642
    invoke-virtual {p0}, Landroid/support/v7/app/m;->p()Landroid/view/Window$Callback;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/m;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    invoke-virtual {p1}, Landroid/support/v7/view/menu/f;->p()Landroid/support/v7/view/menu/f;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/m;->a(Landroid/view/Menu;)Landroid/support/v7/app/m$d;

    move-result-object v1

    .line 645
    if-eqz v1, :cond_0

    .line 646
    iget v1, v1, Landroid/support/v7/app/m$d;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 885
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 887
    iget-object v1, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    :goto_0
    return v0

    .line 892
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 893
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 894
    if-nez v2, :cond_1

    .line 896
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/m;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 894
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 896
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/m;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 3
    .parameter

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 667
    :cond_1
    new-instance v0, Landroid/support/v7/app/m$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/m$b;-><init>(Landroid/support/v7/app/m;Landroid/support/v7/view/b$a;)V

    .line 669
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    .line 672
    iget-object v1, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/g;

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/g;

    iget-object v2, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    invoke-interface {v1, v2}, Landroid/support/v7/app/g;->a(Landroid/support/v7/view/b;)V

    .line 677
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    if-nez v1, :cond_3

    .line 679
    invoke-virtual {p0, v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    .line 682
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    return-object v0
.end method

.method b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_0

    .line 1034
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/support/v7/app/m;->s()V

    .line 165
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Landroid/support/v7/app/m;->s()V

    .line 283
    iget-object v0, p0, Landroid/support/v7/app/m;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 286
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Landroid/support/v7/app/m;->r:Landroid/support/v7/widget/t;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/t;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/m;->l()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 605
    invoke-virtual {p0}, Landroid/support/v7/app/m;->l()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/m;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroid/support/v7/app/m;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 540
    invoke-direct {p0, p1}, Landroid/support/v7/app/m;->g(I)I

    move-result v2

    .line 542
    iget-boolean v3, p0, Landroid/support/v7/app/m;->l:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 577
    :goto_0
    return v0

    .line 545
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/app/m;->h:Z

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    .line 547
    iput-boolean v0, p0, Landroid/support/v7/app/m;->h:Z

    .line 550
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 577
    iget-object v0, p0, Landroid/support/v7/app/m;->b:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 552
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/m;->w()V

    .line 553
    iput-boolean v1, p0, Landroid/support/v7/app/m;->h:Z

    move v0, v1

    .line 554
    goto :goto_0

    .line 556
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/m;->w()V

    .line 557
    iput-boolean v1, p0, Landroid/support/v7/app/m;->i:Z

    move v0, v1

    .line 558
    goto :goto_0

    .line 560
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/m;->w()V

    .line 561
    iput-boolean v1, p0, Landroid/support/v7/app/m;->j:Z

    move v0, v1

    .line 562
    goto :goto_0

    .line 564
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/m;->w()V

    .line 565
    iput-boolean v1, p0, Landroid/support/v7/app/m;->y:Z

    move v0, v1

    .line 566
    goto :goto_0

    .line 568
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/m;->w()V

    .line 569
    iput-boolean v1, p0, Landroid/support/v7/app/m;->z:Z

    move v0, v1

    .line 570
    goto :goto_0

    .line 572
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/m;->w()V

    .line 573
    iput-boolean v1, p0, Landroid/support/v7/app/m;->l:Z

    move v0, v1

    .line 574
    goto :goto_0

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 900
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 923
    :cond_1
    :goto_0
    return v0

    .line 902
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/m;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 905
    :sswitch_1
    iget-boolean v2, p0, Landroid/support/v7/app/m;->D:Z

    .line 906
    iput-boolean v1, p0, Landroid/support/v7/app/m;->D:Z

    .line 908
    invoke-direct {p0, v1, v1}, Landroid/support/v7/app/m;->a(IZ)Landroid/support/v7/app/m$d;

    move-result-object v3

    .line 909
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroid/support/v7/app/m$d;->o:Z

    if-eqz v4, :cond_2

    .line 910
    if-nez v2, :cond_1

    .line 914
    invoke-direct {p0, v3, v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m$d;Z)V

    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/m;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 900
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(ILandroid/view/Menu;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 630
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 631
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v1

    .line 632
    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->e(Z)V

    .line 637
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 954
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    move v6, v7

    .line 956
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/m;->K:Landroid/support/v7/app/p;

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Landroid/support/v7/app/p;

    invoke-direct {v0}, Landroid/support/v7/app/p;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/m;->K:Landroid/support/v7/app/p;

    .line 961
    :cond_0
    if-eqz v6, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/m;->a(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v7

    .line 963
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/m;->K:Landroid/support/v7/app/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/p;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v6, v1

    .line 954
    goto :goto_0

    :cond_2
    move v5, v1

    .line 961
    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->d(Z)V

    .line 243
    :cond_0
    return-void
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 927
    sparse-switch p1, :sswitch_data_0

    .line 943
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 946
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/m;->a(ILandroid/view/KeyEvent;)Z

    :cond_0
    move v0, v1

    .line 948
    :goto_1
    return v0

    .line 929
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/m;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 937
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/app/m;->D:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 927
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->d(Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/m;->d(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Landroid/support/v7/app/i;->f()V

    .line 292
    iget-object v0, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->h()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    .line 296
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 999
    invoke-static {v0, p0}, Landroid/support/v4/view/k;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/o;)V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/k;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/o;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/m;

    if-nez v0, :cond_0

    .line 1003
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/support/v7/app/m;->s()V

    .line 171
    iget-boolean v0, p0, Landroid/support/v7/app/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 176
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/m;->i:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    .line 181
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    iget-boolean v1, p0, Landroid/support/v7/app/m;->H:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 179
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/m;->f:Landroid/support/v7/app/a;

    goto :goto_1
.end method

.method r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 831
    iget-object v1, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Landroid/support/v7/app/m;->m:Landroid/support/v7/view/b;

    invoke-virtual {v1}, Landroid/support/v7/view/b;->c()V

    .line 843
    :cond_0
    :goto_0
    return v0

    .line 837
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v1

    .line 838
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/app/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
