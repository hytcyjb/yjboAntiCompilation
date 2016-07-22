.class Lcom/didi/beatles/upload/BtsPicUploadActivity$2;
.super Ljava/lang/Object;
.source "BtsPicUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$2;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$2;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    .line 124
    return-void
.end method
