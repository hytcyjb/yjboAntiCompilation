.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;
.super Ljava/lang/Object;
.source "BtsWeixinLoginActivity.java"

# interfaces
.implements Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyImageLoaderListener"
.end annotation


# instance fields
.field public _gender:Ljava/lang/String;

.field public _nickname:Ljava/lang/String;

.field public _open_id:Ljava/lang/String;

.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "open_id"
    .parameter "nickname"
    .parameter "gender"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->_open_id:Ljava/lang/String;

    .line 357
    iput-object p3, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->_nickname:Ljava/lang/String;

    .line 358
    iput-object p4, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->_gender:Ljava/lang/String;

    .line 359
    return-void
.end method


# virtual methods
.method public onImageDownloaded(Ljava/lang/String;)V
    .locals 5
    .parameter "filePath"

    .prologue
    const v4, 0x7f0b011f

    .line 363
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    sget-object v2, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->ERROR:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v3, v4}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->showToastInfo(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$300(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    sget-object v2, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->ERROR:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v3, v4}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->showToastInfo(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$300(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->_open_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->_nickname:Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;->_gender:Ljava/lang/String;

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$200(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
