.class Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;
.super Ljava/lang/Object;
.source "CommonFeedBackFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonFeedBackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 181
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 147
    :pswitch_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 148
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$000(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f07003c

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->uploadNetLog()V
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$100(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V

    .line 152
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$000(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f07003d

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    const v2, 0x7f0b0345

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$000(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, cityid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    :cond_2
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 161
    .local v0, cityObj:Lcom/didi/common/model/City;
    if-eqz v0, :cond_3

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------city id db:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " city:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .end local v0           #cityObj:Lcom/didi/common/model/City;
    :cond_3
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2$1;

    invoke-direct {v3, p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2$1;-><init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;)V

    invoke-static {v2, v1, v3}, Lcom/didi/common/net/CommonRequest;->doFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
