.class public Lcom/didi/beatles/upload/BtsUploadPicWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "BtsUploadPicWebActivity.java"


# static fields
.field public static final BUNDLE_PHOTO_URL:Ljava/lang/String; = "bundle_photo_url"

.field private static final CMD_UPLOAD_PIC:Ljava/lang/String; = "uploadPic"

.field private static final KEY_OPEN_GALLERY_CAMERA:Ljava/lang/String; = "open_gallery_camera"

.field private static final KEY_UPLOAD_URL:Ljava/lang/String; = "upload_url"

.field public static final OPEN_TYPE_CAMERA:I = 0x65

.field public static final OPEN_TYPE_GALLERY:I = 0x64

.field private static final REQ_OPEN_HANDLE_PIC_ACTIVITY:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/webview/WebActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 80
    const-string v2, "bundle_photo_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsUploadPicWebActivity;->getmCommonWebView()Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v1

    .line 83
    .local v1, webView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:getUrl(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
