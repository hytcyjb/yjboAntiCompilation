.class public Lcom/didi/game/activity/GameInfoActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "GameInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/game/activity/GameInfoActivity$2;,
        Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;
    }
.end annotation


# instance fields
.field private curSizeTV:Landroid/widget/TextView;

.field private delBtnImg:Landroid/widget/ImageView;

.field private downProgressBar:Landroid/widget/ProgressBar;

.field private downloadItem:Lcom/didi/game/download/DownloadItem;

.field private downloadLayout:Landroid/widget/RelativeLayout;

.field private downloadManager:Lcom/didi/game/download/DownloadManager;

.field private gameInfo:Lcom/didi/game/model/GameInfo;

.field private inflater:Landroid/view/LayoutInflater;

.field private instance:Lcom/didi/game/activity/GameInfoActivity;

.field private layout01:Landroid/widget/RelativeLayout;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private startDownload:Z

.field private stateChangeBtn:Landroid/widget/Button;

.field private totalSizeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/game/activity/GameInfoActivity;->startDownload:Z

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/activity/GameInfoActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->instance:Lcom/didi/game/activity/GameInfoActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)Lcom/didi/game/download/DownloadItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method private refreshView(Lcom/didi/game/download/DownloadItem;)V
    .locals 11
    .parameter "downloadItem"

    .prologue
    const v10, 0x7f0b016b

    const v1, 0x7f0b016c

    const v9, 0x7f020104

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 229
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 230
    .local v6, state:Lcom/didi/game/download/DownloadItem$State;
    :goto_0
    if-eqz v6, :cond_0

    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v6, v0}, Lcom/didi/game/download/DownloadItem$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 232
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 233
    invoke-direct {p0, v7}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    .line 293
    :goto_1
    return-void

    .line 229
    .end local v6           #state:Lcom/didi/game/download/DownloadItem$State;
    :cond_1
    invoke-virtual {p1}, Lcom/didi/game/download/DownloadItem;->getOriginalState()Lcom/didi/game/download/DownloadItem$State;

    move-result-object v6

    goto :goto_0

    .line 236
    .restart local v6       #state:Lcom/didi/game/download/DownloadItem$State;
    :cond_2
    sget-object v0, Lcom/didi/game/activity/GameInfoActivity$2;->$SwitchMap$com$didi$game$download$DownloadItem$State:[I

    invoke-virtual {v6}, Lcom/didi/game/download/DownloadItem$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 287
    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 288
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 289
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 290
    invoke-direct {p0, v7}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    goto :goto_1

    .line 238
    :pswitch_0
    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    move v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 239
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 240
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 241
    invoke-direct {p0, v8}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    goto :goto_1

    .line 244
    :pswitch_1
    const v1, 0x7f0b0172

    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 245
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 247
    invoke-direct {p0, v8}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    goto :goto_1

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->layout01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 251
    invoke-direct {p0, v8}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 255
    :cond_4
    const v1, 0x7f0b0171

    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    goto :goto_1

    .line 258
    :pswitch_3
    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    move v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 259
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 260
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 261
    invoke-direct {p0, v8}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    goto/16 :goto_1

    .line 264
    :pswitch_4
    iget-wide v0, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 265
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v0}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v0

    iput v0, p1, Lcom/didi/game/download/DownloadItem;->state:I

    .line 266
    invoke-direct {p0, p1}, Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V

    goto/16 :goto_1

    .line 269
    :cond_5
    const v1, 0x7f0b016e

    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 270
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 272
    invoke-direct {p0, v8}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    goto/16 :goto_1

    .line 275
    :pswitch_5
    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 276
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 277
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 278
    invoke-direct {p0, v7}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    goto/16 :goto_1

    .line 281
    :pswitch_6
    const v1, 0x7f0b016f

    iget-wide v2, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/game/activity/GameInfoActivity;->setDownloadLayoutData(IJJ)V

    .line 282
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 283
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 284
    invoke-direct {p0, v7}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    goto/16 :goto_1

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setDownloadLayoutData(IJJ)V
    .locals 6
    .parameter "stateChangeBtnText"
    .parameter "curSize"
    .parameter "totalSize"

    .prologue
    const/4 v5, 0x1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===curSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 218
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->curSizeTV:Landroid/widget/TextView;

    const-string v1, "0MB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->totalSizeTV:Landroid/widget/TextView;

    const-string v1, "0MB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    long-to-double v1, p2

    long-to-double v3, p4

    div-double/2addr v1, v3

    const-wide v3, 0x40c3880000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 223
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->curSizeTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3, v5}, Lcom/didi/game/common/utils/FileUtil;->byte2MB(JI)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->totalSizeTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4, p5, v5}, Lcom/didi/game/common/utils/FileUtil;->byte2MB(JI)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showBottomDownloadLayout()V
    .locals 5

    .prologue
    .line 160
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->inflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/didi/game/activity/GameInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->inflater:Landroid/view/LayoutInflater;

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    .line 165
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0xb9

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f080387

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    .line 169
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 170
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f08038b

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    .line 171
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    const v3, 0x7f020104

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f080388

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->curSizeTV:Landroid/widget/TextView;

    .line 173
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f080389

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->totalSizeTV:Landroid/widget/TextView;

    .line 175
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f080386

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->layout01:Landroid/widget/RelativeLayout;

    .line 177
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f08038a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->delBtnImg:Landroid/widget/ImageView;

    .line 178
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->delBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/didi/game/activity/GameInfoActivity;->resizeView(Landroid/view/View;)V

    .line 181
    const v2, 0x7f08005f

    invoke-virtual {p0, v2}, Lcom/didi/game/activity/GameInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 182
    .local v0, layout:Landroid/widget/LinearLayout;
    const v2, 0x7f080384

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    :cond_2
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/didi/game/model/GameInfo;Z)V
    .locals 3
    .parameter "context"
    .parameter "gameInfo"
    .parameter "startDownload"

    .prologue
    const/4 v2, 0x1

    .line 58
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 59
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 60
    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 61
    iget-object v2, p1, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 62
    iget-object v2, p1, Lcom/didi/game/model/GameInfo;->detailUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/game/activity/GameInfoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    const-string v2, "gameInfo"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    const-string v2, "startDownload"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method private toggleProgressLayout(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/high16 v3, 0x3f80

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->layout01:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 196
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {v1, v3, v2}, Lcom/didi/common/util/WindowUtil;->resizeWidthAndHeight(Landroid/view/View;FF)Z

    .line 204
    :goto_0
    return-void

    .line 199
    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->layout01:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 201
    .restart local v0       #p:Landroid/view/ViewGroup$LayoutParams;
    const/16 v1, 0xb9

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {v1, v3, v2}, Lcom/didi/common/util/WindowUtil;->resizeWidthAndHeight(Landroid/view/View;FF)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 475
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/webview/WebActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    packed-switch p1, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 478
    :pswitch_0
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v2, v2, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/game/common/utils/DiDiUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v2, Lcom/didi/game/download/DownloadItem;->state:I

    .line 480
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Lcom/didi/game/download/DownloadManager;->updateDownloadItem(Lcom/didi/game/download/DownloadItem;)V

    .line 481
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-direct {p0, v2}, Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V

    .line 482
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, appFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5220\u9664\u6587\u4ef6 file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5931\u8d25,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 488
    const v2, 0x7f0b0165

    invoke-virtual {p0, v2}, Lcom/didi/game/activity/GameInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v5}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 424
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/didi/game/activity/GameInfoActivity;->onStateChange(Landroid/view/View;)V

    goto :goto_0

    .line 427
    :pswitch_1
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    if-eqz v1, :cond_0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v1, v2}, Lcom/didi/game/download/DownloadManager;->stopDownload(Lcom/didi/game/download/DownloadItem;)V
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    new-instance v1, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v1, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 437
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v2, ""

    const-string v3, "\u786e\u8ba4\u5220\u9664\u4e0b\u8f7d\u9879\uff1f"

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 439
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v2, 0x7f0b0168

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v2, 0x7f0b0163

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v2, Lcom/didi/game/activity/GameInfoActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/GameInfoActivity$1;-><init>(Lcom/didi/game/activity/GameInfoActivity;)V

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 468
    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v1}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x7f08038a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iput-object p0, p0, Lcom/didi/game/activity/GameInfoActivity;->instance:Lcom/didi/game/activity/GameInfoActivity;

    .line 104
    invoke-virtual {p0}, Lcom/didi/game/activity/GameInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 105
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "gameInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/didi/game/model/GameInfo;

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    .line 106
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/didi/game/activity/GameInfoActivity;->finish()V

    .line 109
    :cond_0
    const-string v2, "startDownload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/didi/game/activity/GameInfoActivity;->startDownload:Z

    .line 110
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget v2, v2, Lcom/didi/game/model/GameInfo;->type:I

    if-ne v2, v5, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/didi/game/activity/GameInfoActivity;->showBottomDownloadLayout()V

    .line 113
    invoke-static {p0}, Lcom/didi/game/download/DownloadService;->getDownloadManager(Landroid/content/Context;)Lcom/didi/game/download/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    .line 118
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    invoke-virtual {v2, v3}, Lcom/didi/game/download/DownloadManager;->initDownloadItem(Lcom/didi/game/model/GameInfo;)Lcom/didi/game/download/DownloadItem;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    .line 119
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    if-nez v2, :cond_1

    .line 120
    const v2, 0x7f0b0170

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 121
    invoke-virtual {p0}, Lcom/didi/game/activity/GameInfoActivity;->finish()V

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    iget v2, v2, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    iget v2, v2, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    iget v2, v2, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    const-class v3, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/game/download/DownloadItem;->existsListener(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    new-instance v3, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;

    const-class v4, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;-><init>(Lcom/didi/game/activity/GameInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/didi/game/download/DownloadItem;->addListener(Lcom/didi/game/download/RequestCallBack;)V

    .line 130
    invoke-direct {p0, v5}, Lcom/didi/game/activity/GameInfoActivity;->toggleProgressLayout(Z)V

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-direct {p0, v2}, Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadItem;->getOriginalState()Lcom/didi/game/download/DownloadItem$State;

    move-result-object v0

    .line 137
    .local v0, curState:Lcom/didi/game/download/DownloadItem$State;
    iget-boolean v2, p0, Lcom/didi/game/activity/GameInfoActivity;->startDownload:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->LOADING:Lcom/didi/game/download/DownloadItem$State;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->STARTED:Lcom/didi/game/download/DownloadItem$State;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->WAITING:Lcom/didi/game/download/DownloadItem$State;

    if-eq v0, v2, :cond_4

    .line 140
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->stateChangeBtn:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/didi/game/activity/GameInfoActivity;->onStateChange(Landroid/view/View;)V

    .line 142
    :cond_4
    const-class v2, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->getInstance(Ljava/lang/String;)Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerPositionPushListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    const-class v1, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/download/DownloadItem;->removeListener(Ljava/lang/String;)V

    .line 502
    :cond_0
    const-class v0, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->removeListener(Ljava/lang/String;)V

    .line 503
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onDestroy()V

    .line 504
    return-void
.end method

.method protected onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    invoke-virtual {v0, v1}, Lcom/didi/game/download/DownloadManager;->initDownloadItem(Lcom/didi/game/model/GameInfo;)Lcom/didi/game/download/DownloadItem;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    .line 152
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-direct {p0, v0}, Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onStateChange(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 301
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    if-nez v2, :cond_1

    .line 309
    new-instance v2, Lcom/didi/game/download/DownloadItem;

    invoke-direct {v2}, Lcom/didi/game/download/DownloadItem;-><init>()V

    iput-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    .line 310
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v3, v3, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-static {}, Lcom/didi/game/common/utils/PathUtil;->getFileSavePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/game/download/DownloadItem;->fileSavePath:Ljava/lang/String;

    .line 312
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/didi/game/download/DownloadItem;->autoRename:Z

    .line 313
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/didi/game/download/DownloadItem;->autoResume:Z

    .line 314
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/game/download/DownloadItem;->fileName:Ljava/lang/String;

    .line 315
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v3, v3, Lcom/didi/game/model/GameInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/game/download/DownloadItem;->title:Ljava/lang/String;

    .line 316
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v3, v3, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    .line 317
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    new-instance v4, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;

    const-class v5, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;-><init>(Lcom/didi/game/activity/GameInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/didi/game/download/DownloadManager;->addNewDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/RequestCallBack;)V

    .line 318
    const-string v2, "pxxmenu04_sw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[menu_type=1][pxxgame_source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][pxxmenu_starttime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->position:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "addLogByCustom pxxmenu04_sw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[menu_type=1][pxxgame_source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][pxxmenu_starttime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->position:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadItem;->getOriginalState()Lcom/didi/game/download/DownloadItem$State;

    move-result-object v1

    .line 328
    .local v1, state:Lcom/didi/game/download/DownloadItem$State;
    sget-object v2, Lcom/didi/game/activity/GameInfoActivity$2;->$SwitchMap$com$didi$game$download$DownloadItem$State:[I

    invoke-virtual {v1}, Lcom/didi/game/download/DownloadItem$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 361
    :try_start_0
    const-string v2, "pxxmenu04_sw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[menu_type=1][pxxgame_source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][pxxmenu_starttime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->position:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v2, "addLogByCustom pxxmenu04_sw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[menu_type=1][pxxgame_source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][pxxmenu_starttime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->position:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    new-instance v4, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;

    const-class v5, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;-><init>(Lcom/didi/game/activity/GameInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/didi/game/download/DownloadManager;->addNewDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/RequestCallBack;)V
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->printStackTrace()V

    .line 370
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .end local v0           #e:Lnet/tsz/afinal/exception/DbException;
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Lcom/didi/game/download/DownloadManager;->stopDownload(Lcom/didi/game/download/DownloadItem;)V
    :try_end_1
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 334
    :catch_1
    move-exception v0

    .line 335
    .restart local v0       #e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v0           #e:Lnet/tsz/afinal/exception/DbException;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    new-instance v4, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;

    const-class v5, Lcom/didi/game/activity/GameInfoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;-><init>(Lcom/didi/game/activity/GameInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/didi/game/download/DownloadManager;->resumeDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/RequestCallBack;)V
    :try_end_2
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 342
    :catch_2
    move-exception v0

    .line 343
    .restart local v0       #e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    .end local v0           #e:Lnet/tsz/afinal/exception/DbException;
    :pswitch_2
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->instance:Lcom/didi/game/activity/GameInfoActivity;

    iget-object v3, p0, Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/didi/common/util/Utils;->installApk(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 350
    :pswitch_3
    const-string v2, "pxxmenu04_sw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[menu_type=1][pxxgame_source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][pxxmenu_starttime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->position1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v2, "addLogByCustom pxxmenu04_sw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[menu_type=1][pxxgame_source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][pxxmenu_starttime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v4, v4, Lcom/didi/game/model/GameInfo;->position1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/didi/game/activity/GameInfoActivity;->gameInfo:Lcom/didi/game/model/GameInfo;

    iget-object v2, v2, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/didi/game/common/utils/DiDiUtils;->launchApp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
