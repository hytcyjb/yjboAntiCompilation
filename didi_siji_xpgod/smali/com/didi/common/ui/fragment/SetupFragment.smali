.class public Lcom/didi/common/ui/fragment/SetupFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "SetupFragment.java"


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private dialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private layoutAbout:Landroid/widget/RelativeLayout;

.field private layoutAddr:Landroid/widget/RelativeLayout;

.field private layoutBinding:Landroid/widget/RelativeLayout;

.field private layoutExit:Landroid/widget/RelativeLayout;

.field private layoutFeedback:Landroid/widget/RelativeLayout;

.field private layoutGuideDaiJia:Landroid/widget/RelativeLayout;

.field private layoutGuidebookBeatles:Landroid/widget/RelativeLayout;

.field private layoutGuidebookCar:Landroid/widget/RelativeLayout;

.field private layoutGuidebookTaxi:Landroid/widget/RelativeLayout;

.field private layoutLawTerms:Landroid/widget/RelativeLayout;

.field private layoutPayNoPwd:Landroid/widget/RelativeLayout;

.field private layoutRefund:Landroid/widget/RelativeLayout;

.field private layoutUpdate:Landroid/widget/RelativeLayout;

.field private layoutUserGuideFlier:Landroid/widget/RelativeLayout;

.field private layoutUserItem:Landroid/widget/RelativeLayout;

.field private layoutVirtualSwitch:Landroid/widget/RelativeLayout;

.field private lineCarRefund:Landroid/widget/ImageView;

.field private lineFlierValuation:Landroid/widget/ImageView;

.field private lineVirtualSwitch:Landroid/widget/ImageView;

.field private line_pay_nopwd:Landroid/view/View;

.field private listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private scrollView:Landroid/widget/ScrollView;

.field private switchListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

.field private tvVersion:Landroid/widget/TextView;

.field private updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

.field private updatejob:Lthread/Job;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 258
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$4;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$5;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->backListener:Landroid/view/View$OnClickListener;

    .line 418
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$6;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 466
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$7;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->switchListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    .line 491
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$8;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutVirtualSwitch:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->lineVirtualSwitch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutRefund:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->lineCarRefund:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/didi/common/ui/fragment/SetupFragment;Lthread/Job;)Lthread/Job;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->updatejob:Lthread/Job;

    return-object p1
.end method

.method static synthetic access$800(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/download/UpdateHelper$UpdatedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/common/ui/fragment/SetupFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->back()V

    return-void
.end method

.method private back()V
    .locals 3

    .prologue
    .line 245
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/MainActivity;->switchLeftView(I)V

    .line 246
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$3;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method

.method private getShowContentFromNet()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$1;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getVirtualMobile(Lcom/didi/common/net/ResponseListener;)V

    .line 209
    new-instance v0, Lcom/didi/common/ui/fragment/SetupFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SetupFragment$2;-><init>(Lcom/didi/common/ui/fragment/SetupFragment;)V

    invoke-static {v0}, Lcom/didi/taxi/net/TaxiRequest;->checkUserProperty(Lcom/didi/common/net/ResponseListener;)V

    .line 220
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 137
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 139
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->tvVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->getShowContentFromNet()V

    .line 141
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 144
    const v0, 0x7f08050d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutBinding:Landroid/widget/RelativeLayout;

    .line 145
    const v0, 0x7f080306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutVirtualSwitch:Landroid/widget/RelativeLayout;

    .line 146
    const v0, 0x7f080516

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->lineVirtualSwitch:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f08052a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->lineFlierValuation:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f080537

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->lineCarRefund:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f08002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->scrollView:Landroid/widget/ScrollView;

    .line 151
    const v0, 0x7f080447

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutAddr:Landroid/widget/RelativeLayout;

    .line 152
    const v0, 0x7f080513

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/SwitchBar;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    .line 153
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getSoundsSwtich()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 155
    const v0, 0x7f080521

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuidebookTaxi:Landroid/widget/RelativeLayout;

    .line 156
    const v0, 0x7f080524

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuidebookCar:Landroid/widget/RelativeLayout;

    .line 157
    const v0, 0x7f08052b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuidebookBeatles:Landroid/widget/RelativeLayout;

    .line 158
    const v0, 0x7f08052e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuideDaiJia:Landroid/widget/RelativeLayout;

    .line 159
    const v0, 0x7f080538

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutFeedback:Landroid/widget/RelativeLayout;

    .line 160
    const v0, 0x7f08053b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutLawTerms:Landroid/widget/RelativeLayout;

    .line 161
    const v0, 0x7f08053f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutAbout:Landroid/widget/RelativeLayout;

    .line 162
    const v0, 0x7f080543

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutExit:Landroid/widget/RelativeLayout;

    .line 163
    const v0, 0x7f080517

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutPayNoPwd:Landroid/widget/RelativeLayout;

    .line 164
    const v0, 0x7f08051a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->line_pay_nopwd:Landroid/view/View;

    .line 165
    const v0, 0x7f080527

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUserGuideFlier:Landroid/widget/RelativeLayout;

    .line 166
    const v0, 0x7f080532

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUserItem:Landroid/widget/RelativeLayout;

    .line 167
    const v0, 0x7f08051b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUpdate:Landroid/widget/RelativeLayout;

    .line 168
    const v0, 0x7f08051d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->tvVersion:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f080535

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutRefund:Landroid/widget/RelativeLayout;

    .line 172
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getShowWxAgentFlag()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutPayNoPwd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->line_pay_nopwd:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_0
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenFlier()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUserGuideFlier:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->lineFlierValuation:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :goto_1
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutPayNoPwd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->line_pay_nopwd:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUserGuideFlier:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->lineFlierValuation:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutAddr:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutBinding:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->switchListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V

    .line 118
    sget-object v0, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonVirtualMobile;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutVirtualSwitch:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuidebookTaxi:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuidebookCar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuidebookBeatles:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutGuideDaiJia:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutFeedback:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutLawTerms:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutAbout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutExit:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutPayNoPwd:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUserItem:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUpdate:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->layoutUserGuideFlier:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 224
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 225
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/SetupFragment;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 227
    const v1, 0x7f0b04f1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 228
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->back()V

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const v1, 0x7f0300ef

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->setTitlebar()V

    .line 108
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/SetupFragment;->initViews(Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->setListeners()V

    .line 110
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->initData()V

    .line 111
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 504
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 505
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->updatejob:Lthread/Job;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->updatejob:Lthread/Job;

    invoke-virtual {v0}, Lthread/Job;->cancel()V

    .line 508
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 232
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 233
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 234
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 235
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/SwitchBar;->setXprefValue(II)V

    .line 236
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 480
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 483
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 487
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 488
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 489
    return-void
.end method
