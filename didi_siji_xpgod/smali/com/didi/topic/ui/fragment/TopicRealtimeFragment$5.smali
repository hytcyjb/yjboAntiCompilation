.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$5;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->checkIMUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$5;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$5;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$900(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const v1, 0x7f020171

    invoke-static {v0, v1}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 381
    return-void
.end method
