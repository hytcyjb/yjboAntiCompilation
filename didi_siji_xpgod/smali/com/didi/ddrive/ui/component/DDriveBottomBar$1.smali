.class Lcom/didi/ddrive/ui/component/DDriveBottomBar$1;
.super Ljava/lang/Object;
.source "DDriveBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveBottomBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mListener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$000(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Lcom/didi/ddrive/listener/DDriveRealtimeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mListener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->access$000(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Lcom/didi/ddrive/listener/DDriveRealtimeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/ddrive/listener/DDriveRealtimeListener;->onDDriveBtnClicked()V

    .line 59
    :cond_0
    return-void
.end method
