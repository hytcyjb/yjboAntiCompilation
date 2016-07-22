.class public Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
.super Lcom/didi/common/ui/component/DrawerView;
.source "DriverReceiveNotifyDrawerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;,
        Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;,
        Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerScrollListener;,
        Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerCloseListener;,
        Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerOpenListener;
    }
.end annotation


# static fields
.field public static final CLOSE_DELAY_TIME:I = 0x1388

.field public static final MSG_CLOSE_DRAWER:I = 0x21

.field public static final MSG_OPEN_DRAWER:I = 0x22

.field public static final MSG_SWITCH_MAIN:I = 0x24

.field public static final MSG_UPDATE_VIEW:I = 0x23

.field public static final TAG:Ljava/lang/String; = "DriverReceiveNotifyDrawerView"

.field private static drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;


# instance fields
.field public driverCommingTV:Lx/TextView;

.field public driverDistanceAndTimeTV:Lx/TextView;

.field public driverHead:Landroid/widget/ImageView;

.field public handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

.field public isAttached:Z

.field private mContext:Landroid/content/Context;

.field public queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/component/DrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isAttached:Z

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->type:I

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 79
    iput-object p1, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/ui/component/DrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isAttached:Z

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->type:I

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 85
    iput-object p1, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->init()V

    .line 87
    return-void
.end method

.method static synthetic access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->showDrawer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->showDrawer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static close(Z)V
    .locals 2
    .parameter "isAnim"

    .prologue
    const/16 v1, 0x8

    .line 406
    if-eqz p0, :cond_1

    .line 407
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->animateClose()V

    .line 409
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0, v1}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setVisibility(I)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close()V

    .line 414
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0, v1}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static close(ZJI)V
    .locals 5
    .parameter "isAnim"
    .parameter "time"
    .parameter "type"

    .prologue
    const/16 v4, 0x21

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-nez v2, :cond_0

    .line 459
    :goto_0
    return-void

    .line 437
    :cond_0
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    if-nez v2, :cond_1

    .line 438
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    new-instance v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    invoke-direct {v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;-><init>()V

    iput-object v3, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    .line 439
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 440
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    sget-object v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v3, v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    if-eqz p0, :cond_2

    :goto_1
    invoke-static {v3, v4, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 442
    :cond_3
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    sget-object v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v3, v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    if-eqz p0, :cond_4

    :goto_2
    invoke-static {v3, v4, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0, p1, p2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static getDrawerView()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-nez v1, :cond_0

    .line 122
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 123
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 124
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 125
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 130
    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 132
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 133
    const/16 v1, 0x113

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 135
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009e

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sput-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    .line 137
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v1, v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    const v3, 0x7f080371

    invoke-virtual {v1, v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverHead:Landroid/widget/ImageView;

    .line 139
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    const v3, 0x7f080372

    invoke-virtual {v1, v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverCommingTV:Lx/TextView;

    .line 140
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    const v3, 0x7f080373

    invoke-virtual {v1, v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverDistanceAndTimeTV:Lx/TextView;

    .line 142
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 143
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v1, v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setOnDrawerOpenListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;)V

    .line 144
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v1, v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setOnDrawerCloseListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;)V

    .line 145
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    new-instance v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$2;

    invoke-direct {v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_0
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    return-object v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->resize(Landroid/view/View;)Z

    .line 91
    new-instance v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$1;

    invoke-direct {v0, p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$1;-><init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V

    invoke-virtual {p0, v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isOpened()Z

    move-result v0

    goto :goto_0
.end method

.method private setIconAndDriverComming(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "iconUrl"
    .parameter "commingStr"

    .prologue
    .line 377
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverHead:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 378
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    const v2, 0x7f080371

    invoke-virtual {v0, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverHead:Landroid/widget/ImageView;

    .line 379
    :cond_0
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverHead:Landroid/widget/ImageView;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    :cond_1
    new-instance v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$3;

    invoke-direct {v0, p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$3;-><init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 398
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverCommingTV:Lx/TextView;

    if-nez v0, :cond_2

    .line 399
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    const v2, 0x7f080372

    invoke-virtual {v0, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/TextView;

    iput-object v0, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverCommingTV:Lx/TextView;

    .line 401
    :cond_2
    sget-object v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverCommingTV:Lx/TextView;

    invoke-virtual {v0, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
    .locals 6
    .parameter "iconUrl"
    .parameter "driverName"
    .parameter "card"
    .parameter "distance"
    .parameter "time"
    .parameter "needCloseOther"

    .prologue
    const/4 v5, 0x1

    .line 244
    const-string v1, "DriverReceiveNotifyDrawerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDriverPostionReceived--6 1--iconUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",driverName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",needCloseOther"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-nez v1, :cond_0

    .line 248
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getDrawerView()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v1

    sput-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    .line 249
    :cond_0
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    if-nez v1, :cond_1

    .line 250
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    new-instance v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    invoke-direct {v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;-><init>()V

    iput-object v2, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    .line 251
    :cond_1
    new-instance v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;

    invoke-direct {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;-><init>()V

    .line 252
    .local v0, param:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;
    iput-object p0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->iconUrl:Ljava/lang/String;

    .line 253
    iput-object p1, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->driverName:Ljava/lang/String;

    .line 254
    iput-object p2, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->card:Ljava/lang/String;

    .line 255
    iput-object p3, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->distance:Ljava/lang/String;

    .line 256
    iput-object p4, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->time:Ljava/lang/String;

    .line 257
    iput v5, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->drawerType:I

    .line 258
    iput-boolean p5, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->needCloseOther:Z

    .line 260
    if-eqz p5, :cond_2

    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->removeMessages(I)V

    .line 262
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 263
    const-wide/16 v1, 0x0

    sget-object v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget v3, v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->type:I

    invoke-static {v5, v1, v2, v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close(ZJI)V

    .line 267
    :goto_0
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    return-object v1

    .line 265
    :cond_2
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    const/16 v3, 0x22

    iget v4, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->drawerType:I

    invoke-static {v2, v3, v5, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
    .locals 6
    .parameter "iconUrl"
    .parameter "driverName"
    .parameter "card"
    .parameter "needCloseOther"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x22

    .line 282
    const-string v1, "DriverReceiveNotifyDrawerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDriverPostionReceived--6  2---1iconUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",driverName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",needCloseOther"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-nez v1, :cond_0

    .line 285
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getDrawerView()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v1

    sput-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    .line 286
    :cond_0
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    if-nez v1, :cond_1

    .line 287
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    new-instance v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    invoke-direct {v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;-><init>()V

    iput-object v2, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    .line 288
    :cond_1
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    invoke-virtual {v1, v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    invoke-virtual {v1, v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->removeMessages(I)V

    .line 290
    :cond_2
    new-instance v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;

    invoke-direct {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;-><init>()V

    .line 291
    .local v0, param:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;
    iput-object p0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->iconUrl:Ljava/lang/String;

    .line 292
    iput-object p1, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->driverName:Ljava/lang/String;

    .line 293
    iput-object p2, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->card:Ljava/lang/String;

    .line 294
    const/4 v1, 0x2

    iput v1, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->drawerType:I

    .line 295
    iput-boolean p3, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->needCloseOther:Z

    .line 296
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    const-string v1, "DriverReceiveNotifyDrawerView"

    const-string v2, "onDriverPostionReceived 7 isOpen "

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->removeMessages(I)V

    .line 299
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 300
    const-wide/16 v1, 0x0

    sget-object v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget v3, v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->type:I

    invoke-static {v5, v1, v2, v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close(ZJI)V

    .line 305
    :goto_0
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    return-object v1

    .line 302
    :cond_3
    const-string v1, "DriverReceiveNotifyDrawerView"

    const-string v2, "onDriverPostionReceived 7 notOpen "

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    iget v3, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->drawerType:I

    invoke-static {v2, v4, v5, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static showDrawer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "iconUrl"
    .parameter "driverName"
    .parameter "card"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 348
    const-string v2, "DriverReceiveNotifyDrawerView"

    const-string v3, "onDriverPostionReceived 8 showDrawer 2 "

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v2, "DriverReceiveNotifyDrawerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show iconUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",driverName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    if-nez v2, :cond_0

    .line 351
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getDrawerView()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v2

    sput-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    .line 352
    :cond_0
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iput v5, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->type:I

    .line 353
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v1, v2

    check-cast v1, Landroid/view/WindowManager;

    .line 354
    .local v1, wm:Landroid/view/WindowManager;
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->animateOpen()V

    .line 355
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setIconAndDriverComming(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverDistanceAndTimeTV:Lx/TextView;

    const v3, 0x7f0b015c

    invoke-virtual {v2, v3}, Lx/TextView;->setText(I)V

    .line 359
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v2, v6}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setVisibility(I)V

    .line 361
    :cond_1
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-boolean v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isAttached:Z

    if-nez v2, :cond_2

    .line 363
    :try_start_0
    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sget-object v3, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v3}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_2
    :goto_0
    const-wide/16 v2, 0x1388

    invoke-static {v7, v2, v3, v5}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close(ZJI)V

    .line 368
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static showDrawer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "iconUrl"
    .parameter "driverName"
    .parameter "card"
    .parameter "distance"
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 324
    const-string v1, "DriverReceiveNotifyDrawerView"

    const-string v2, "onDriverPostionReceived 8 showDrawer 1 "

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "DriverReceiveNotifyDrawerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show iconUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",driverName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager;

    .line 328
    .local v0, wm:Landroid/view/WindowManager;
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iput v4, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->type:I

    .line 329
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v1}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->animateOpen()V

    .line 330
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v1, p3, p4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setDistanceAndTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setIconAndDriverComming(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v1}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v1, v5}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setVisibility(I)V

    .line 335
    :cond_0
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-boolean v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isAttached:Z

    if-nez v1, :cond_1

    .line 336
    sget-object v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    sget-object v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :cond_1
    const-wide/16 v1, 0x1388

    invoke-static {v4, v1, v2, v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close(ZJI)V

    .line 338
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/didi/common/ui/component/DrawerView;->onAttachedToWindow()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isAttached:Z

    .line 234
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/didi/common/ui/component/DrawerView;->onDetachedFromWindow()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->isAttached:Z

    .line 240
    return-void
.end method

.method public setDistanceAndTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "distance"
    .parameter "time"

    .prologue
    const v8, 0x7f07002f

    const/16 v7, 0x11

    .line 106
    invoke-virtual {p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b015f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, text:Ljava/lang/String;
    const/4 v0, 0x3

    .line 109
    .local v0, distanceIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v3, v4, 0x7

    .line 110
    .local v3, timeIndex:I
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .local v1, style:Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v1, v4, v0, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 114
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 117
    sget-object v4, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->drawerView:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    iget-object v4, v4, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverDistanceAndTimeTV:Lx/TextView;

    invoke-virtual {v4, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance p1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerCloseListener;

    .end local p1
    invoke-direct {p1, p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerCloseListener;-><init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V

    .line 169
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/ui/component/DrawerView;->setOnDrawerCloseListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;)V

    .line 170
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance p1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerOpenListener;

    .end local p1
    invoke-direct {p1, p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerOpenListener;-><init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V

    .line 162
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/ui/component/DrawerView;->setOnDrawerOpenListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;)V

    .line 163
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance p1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerScrollListener;

    .end local p1
    invoke-direct {p1, p0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerScrollListener;-><init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V

    .line 176
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/ui/component/DrawerView;->setOnDrawerScrollListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;)V

    .line 177
    return-void
.end method
