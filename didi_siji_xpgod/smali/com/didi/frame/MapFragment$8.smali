.class Lcom/didi/frame/MapFragment$8;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/didi/common/listener/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MapFragment;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/didi/frame/MapFragment$8;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "oldPhone"
    .parameter "newPhone"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/didi/frame/MapFragment$8;->this$0:Lcom/didi/frame/MapFragment;

    #calls: Lcom/didi/frame/MapFragment;->getGuideFlag()V
    invoke-static {v0}, Lcom/didi/frame/MapFragment;->access$000(Lcom/didi/frame/MapFragment;)V

    .line 573
    iget-object v0, p0, Lcom/didi/frame/MapFragment$8;->this$0:Lcom/didi/frame/MapFragment;

    #calls: Lcom/didi/frame/MapFragment;->getBtsConfig()V
    invoke-static {v0}, Lcom/didi/frame/MapFragment;->access$200(Lcom/didi/frame/MapFragment;)V

    .line 574
    return-void
.end method

.method public onRedPoint(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 578
    return-void
.end method
