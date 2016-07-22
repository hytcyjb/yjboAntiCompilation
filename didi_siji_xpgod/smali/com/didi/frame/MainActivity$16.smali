.class Lcom/didi/frame/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->switchLeftView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/didi/frame/MainActivity$16;->this$0:Lcom/didi/frame/MainActivity;

    iput p2, p0, Lcom/didi/frame/MainActivity$16;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/didi/frame/MainActivity$16;->this$0:Lcom/didi/frame/MainActivity;

    #getter for: Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;
    invoke-static {v0}, Lcom/didi/frame/MainActivity;->access$500(Lcom/didi/frame/MainActivity;)Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/MainActivity$16;->this$0:Lcom/didi/frame/MainActivity;

    #getter for: Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/frame/MainActivity;->access$400(Lcom/didi/frame/MainActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----MainActivity from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/frame/MainActivity$16;->val$from:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1071
    iget v0, p0, Lcom/didi/frame/MainActivity$16;->val$from:I

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/didi/frame/MainActivity$16;->this$0:Lcom/didi/frame/MainActivity;

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 1076
    :cond_0
    return-void
.end method
