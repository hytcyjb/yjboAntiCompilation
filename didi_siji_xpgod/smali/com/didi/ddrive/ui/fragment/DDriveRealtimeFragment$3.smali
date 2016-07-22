.class Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$3;
.super Ljava/lang/Object;
.source "DDriveRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->checkIMUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->access$100(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const v1, 0x7f020171

    invoke-static {v0, v1}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 204
    return-void
.end method
