.class Lcom/didi/beatles/ui/component/BtsTitleBar$1;
.super Ljava/lang/Object;
.source "BtsTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/component/BtsTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsTitleBar;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsTitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsTitleBar$1;->this$0:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 43
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 44
    return-void
.end method
