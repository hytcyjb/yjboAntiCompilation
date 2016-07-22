.class Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$2;
.super Ljava/lang/Object;
.source "ActivityRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$2;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$2;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    #getter for: Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->access$100(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const v1, 0x7f020171

    invoke-static {v0, v1}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 121
    return-void
.end method
