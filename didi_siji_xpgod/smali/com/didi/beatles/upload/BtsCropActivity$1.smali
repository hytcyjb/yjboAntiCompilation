.class Lcom/didi/beatles/upload/BtsCropActivity$1;
.super Ljava/lang/Object;
.source "BtsCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/upload/BtsCropActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsCropActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsCropActivity$1;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity$1;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    #getter for: Lcom/didi/beatles/upload/BtsCropActivity;->mImageLoaded:Z
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsCropActivity;->access$000(Lcom/didi/beatles/upload/BtsCropActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;

    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropActivity$1;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-direct {v0, v1}, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;-><init>(Lcom/didi/beatles/upload/BtsCropActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :cond_0
    return-void
.end method
