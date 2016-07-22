.class Lcom/didi/common/ui/webview/ImageHelper$1;
.super Ljava/lang/Object;
.source "ImageHelper.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/ImageHelper;->handleImageChoose(IIILcom/didi/common/ui/webview/IImg2StrListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/ImageHelper;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/ImageHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/common/ui/webview/ImageHelper$1;->this$0:Lcom/didi/common/ui/webview/ImageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "itemStr"

    .prologue
    .line 76
    if-nez p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper$1;->this$0:Lcom/didi/common/ui/webview/ImageHelper;

    #calls: Lcom/didi/common/ui/webview/ImageHelper;->dispatchTakePictureIntent()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/ImageHelper;->access$000(Lcom/didi/common/ui/webview/ImageHelper;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper$1;->this$0:Lcom/didi/common/ui/webview/ImageHelper;

    #calls: Lcom/didi/common/ui/webview/ImageHelper;->dispatchPickPictureIntent()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/ImageHelper;->access$100(Lcom/didi/common/ui/webview/ImageHelper;)V

    goto :goto_0
.end method
