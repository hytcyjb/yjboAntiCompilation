.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$22;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Lcom/didi/beatles/listener/BtsMapClearListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$22;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClear()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$22;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isLoad:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$2002(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)Z

    .line 1024
    return-void
.end method
