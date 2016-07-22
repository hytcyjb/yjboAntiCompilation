.class Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$1;
.super Ljava/lang/Object;
.source "FlierRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->checkIMUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const v1, 0x7f020171

    invoke-static {v0, v1}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 95
    return-void
.end method
