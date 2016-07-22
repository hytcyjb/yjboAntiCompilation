.class Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$1;
.super Ljava/lang/Object;
.source "DriverReceiveNotifyDrawerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;


# direct methods
.method constructor <init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$1;->this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$1;->this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-virtual {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->animateClose()V

    .line 95
    return-void
.end method
