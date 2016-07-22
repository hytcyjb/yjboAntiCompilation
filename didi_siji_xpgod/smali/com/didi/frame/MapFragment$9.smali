.class Lcom/didi/frame/MapFragment$9;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MapFragment;->modifyAddress()V
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
    .line 611
    iput-object p1, p0, Lcom/didi/frame/MapFragment$9;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/didi/frame/MapFragment$9;->this$0:Lcom/didi/frame/MapFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/frame/MapFragment;->redirected:Z
    invoke-static {v0, v1}, Lcom/didi/frame/MapFragment;->access$302(Lcom/didi/frame/MapFragment;Z)Z

    .line 615
    return-void
.end method
