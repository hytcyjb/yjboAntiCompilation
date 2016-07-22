.class Lcom/didi/map/listener/MapListener$1;
.super Landroid/os/Handler;
.source "MapListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/listener/MapListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/listener/MapListener;


# direct methods
.method constructor <init>(Lcom/didi/map/listener/MapListener;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/didi/map/listener/MapListener$1;->this$0:Lcom/didi/map/listener/MapListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget-object v0, p0, Lcom/didi/map/listener/MapListener$1;->this$0:Lcom/didi/map/listener/MapListener;

    const/4 v1, 0x0

    #setter for: Lcom/didi/map/listener/MapListener;->isMoving:Z
    invoke-static {v0, v1}, Lcom/didi/map/listener/MapListener;->access$002(Lcom/didi/map/listener/MapListener;Z)Z

    .line 203
    return-void
.end method
