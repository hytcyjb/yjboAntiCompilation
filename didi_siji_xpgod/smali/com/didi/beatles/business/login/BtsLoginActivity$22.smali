.class Lcom/didi/beatles/business/login/BtsLoginActivity$22;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Lcom/didi/common/util/SMSUtil$SmsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmsChanged(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    .line 1067
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1068
    .local v3, type:I
    const-string v4, "body"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, body:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1070
    const/4 p1, 0x0

    .line 1071
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isCodeClick:Z
    invoke-static {v4}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    if-ne v3, v6, :cond_0

    .line 1076
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    const v5, 0x7f0b02f3

    invoke-virtual {v4, v5}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    const v5, 0x7f0b02f4

    invoke-virtual {v4, v5}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1079
    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z
    invoke-static {v4, v6}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$702(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z

    .line 1080
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, code:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    .line 1082
    .local v2, flag:Z
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1083
    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v4, v4, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsUtil:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v4}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    .line 1084
    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->login()V
    invoke-static {v4}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2300(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    goto :goto_0
.end method
