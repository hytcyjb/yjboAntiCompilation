.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$20;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;


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
    .line 997
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$20;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookClick()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$20;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setFirstUse()V
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    .line 1002
    return-void
.end method
