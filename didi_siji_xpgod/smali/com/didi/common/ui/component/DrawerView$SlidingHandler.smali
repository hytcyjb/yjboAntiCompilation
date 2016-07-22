.class Lcom/didi/common/ui/component/DrawerView$SlidingHandler;
.super Landroid/os/Handler;
.source "DrawerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/DrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/DrawerView;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/component/DrawerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/didi/common/ui/component/DrawerView$SlidingHandler;->this$0:Lcom/didi/common/ui/component/DrawerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/component/DrawerView;Lcom/didi/common/ui/component/DrawerView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DrawerView$SlidingHandler;-><init>(Lcom/didi/common/ui/component/DrawerView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1030
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1035
    :goto_0
    return-void

    .line 1032
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView$SlidingHandler;->this$0:Lcom/didi/common/ui/component/DrawerView;

    #calls: Lcom/didi/common/ui/component/DrawerView;->doAnimation()V
    invoke-static {v0}, Lcom/didi/common/ui/component/DrawerView;->access$400(Lcom/didi/common/ui/component/DrawerView;)V

    goto :goto_0

    .line 1030
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
