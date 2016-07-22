.class Lcom/didi/car/ui/fragment/CarRealtimeFragment$1;
.super Ljava/lang/Object;
.source "CarRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarRealtimeFragment;->checkIMUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->access$000(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const v1, 0x7f020171

    invoke-static {v0, v1}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 102
    return-void
.end method
