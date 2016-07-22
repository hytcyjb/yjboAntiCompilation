.class public Lcn/sharesdk/onekeyshare/EditPage;
.super Lcn/sharesdk/framework/FakeActivity;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DIM_COLOR:I = 0x7f323232

.field private static final MAX_TEXT_COUNT:I = 0x8c


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private dialogMode:Z

.field private etContent:Landroid/widget/EditText;

.field private image:Landroid/graphics/Bitmap;

.field private ivImage:Landroid/widget/ImageView;

.field private ivPin:Landroid/widget/ImageView;

.field private llBody:Landroid/widget/LinearLayout;

.field private llPlat:Landroid/widget/LinearLayout;

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private reqData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rlPage:Landroid/widget/RelativeLayout;

.field private rlThumb:Landroid/widget/RelativeLayout;

.field private shareImage:Z

.field private tmpBgView:Landroid/view/View;

.field private tvCounter:Landroid/widget/TextView;

.field private views:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/sharesdk/framework/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/EditPage;)[Lcn/sharesdk/framework/Platform;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object p1
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->llPlat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcn/sharesdk/onekeyshare/EditPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/sharesdk/onekeyshare/EditPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->genBackground()V

    return-void
.end method

.method static synthetic access$1200(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/sharesdk/onekeyshare/EditPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    return v0
.end method

.method static synthetic access$502(Lcn/sharesdk/onekeyshare/EditPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    return p1
.end method

.method static synthetic access$600(Lcn/sharesdk/onekeyshare/EditPage;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private genBackground()V
    .locals 7

    .prologue
    .line 546
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f323232

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->background:Landroid/graphics/drawable/Drawable;

    .line 547
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->tmpBgView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 549
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->tmpBgView:Landroid/view/View;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tmpBgView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/EditPage;->tmpBgView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/sharesdk/framework/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 550
    .local v0, bgBm:Landroid/graphics/Bitmap;
    const/16 v3, 0x14

    const/16 v4, 0x8

    invoke-static {v0, v3, v4}, Lcn/sharesdk/framework/utils/BitmapHelper;->blur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 551
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 552
    .local v1, blurBm:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->background:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->background:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v0           #bgBm:Landroid/graphics/Bitmap;
    .end local v1           #blurBm:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v2

    .line 554
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 13
    .parameter "platform"

    .prologue
    .line 424
    const-string v9, "SinaWeibo"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "TencentWeibo"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Facebook"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Twitter"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 426
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 427
    .local v2, llAt:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 429
    .local v3, lpAt:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 430
    const/16 v9, 0x53

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 431
    const/high16 v9, 0x3f80

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 432
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    new-instance v9, Lcn/sharesdk/onekeyshare/EditPage$5;

    invoke-direct {v9, p0}, Lcn/sharesdk/onekeyshare/EditPage$5;-><init>(Lcn/sharesdk/onekeyshare/EditPage;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 443
    .local v7, tvAt:Landroid/widget/TextView;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "btn_back_nor"

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 444
    .local v5, resId:I
    if-lez v5, :cond_1

    .line 445
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 448
    .local v1, dp_32:I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    const/4 v9, 0x1

    const/high16 v10, 0x4190

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 450
    const-string v9, "@"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 452
    .local v0, dp_2:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 453
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    const/high16 v9, -0x100

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 456
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 459
    .local v8, tvName:Landroid/widget/TextView;
    const/4 v9, 0x1

    const/high16 v10, 0x4190

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 460
    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "list_friends"

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 462
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/EditPage;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 466
    .local v4, lpName:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 467
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    .end local v0           #dp_2:I
    .end local v1           #dp_32:I
    .end local v2           #llAt:Landroid/widget/LinearLayout;
    .end local v3           #lpAt:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #lpName:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #resId:I
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #tvAt:Landroid/widget/TextView;
    .end local v8           #tvName:Landroid/widget/TextView;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBodyBottom()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 397
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    .local v1, llBottom:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v5, "platform"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, platform:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcn/sharesdk/onekeyshare/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 403
    .local v0, line:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    .line 409
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    const/16 v5, 0x8c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    const v5, -0x303031

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x4190

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 413
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v2, lpCounter:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 416
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    return-object v1
.end method

.method private getImagePin()Landroid/widget/ImageView;
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 527
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    .line 528
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v5, "pin"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 529
    .local v3, resId:I
    if-lez v3, :cond_0

    .line 530
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 533
    .local v1, dp_80:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 534
    .local v0, dp_36:I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 536
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 537
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 538
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 539
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v4
.end method

.method private getMainBody()Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v8, -0x1

    const/high16 v10, 0x3f80

    const/4 v9, -0x2

    .line 240
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    .local v2, llMainBody:Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v5, lpMain:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 245
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 246
    .local v0, dp_4:I
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, llContent:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v3, lpContent:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 253
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    .line 257
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 258
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v4, lpEt:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getThumbView()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getBodyBottom()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    return-object v2
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "platform"

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 561
    const-string v1, ""

    .line 565
    :goto_0
    return-object v1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 565
    .local v0, resId:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPageBody()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x2

    .line 213
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    .line 214
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 215
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v4, "edittext_back"

    invoke-static {v3, v4}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 216
    .local v2, resId:I
    if-lez v2, :cond_0

    .line 217
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 219
    :cond_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v1, lpBody:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x5

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    const/4 v3, 0x7

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    iget-boolean v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->dialogMode:Z

    if-nez v3, :cond_1

    .line 226
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 229
    .local v0, dp_3:I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getMainBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getSep()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getPlatformList()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->llBody:Landroid/widget/LinearLayout;

    return-object v3
.end method

.method private getPageTitle()Lcn/sharesdk/framework/TitleLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 184
    new-instance v2, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 185
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/TitleLayout;->setId(I)V

    .line 190
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "multi_share"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, resId:I
    if-lez v1, :cond_0

    .line 193
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "share"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 197
    if-lez v1, :cond_1

    .line 198
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    return-object v2
.end method

.method private getPageView()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    .line 156
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    .line 157
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/EditPage;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->dialogMode:Z

    if-eqz v4, :cond_0

    .line 159
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 160
    .local v2, rlDialog:Landroid/widget/RelativeLayout;
    const v4, -0x3fcdcdce

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 161
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 162
    .local v0, dp_8:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/sharesdk/framework/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    sub-int v3, v4, v5

    .line 163
    .local v3, width:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v1, lpDialog:Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 166
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 167
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 179
    .end local v0           #dp_8:I
    .end local v1           #lpDialog:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #rlDialog:Landroid/widget/RelativeLayout;
    .end local v3           #width:I
    :goto_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v4

    .line 175
    :cond_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "plat"

    .prologue
    const/4 v3, 0x0

    .line 694
    if-nez p1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-object v3

    .line 698
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logo_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, resName:Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    invoke-static {v4, v2}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, resId:I
    if-lez v1, :cond_0

    .line 706
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getPlatformList()Landroid/widget/LinearLayout;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 488
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 489
    .local v1, llToolBar:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 491
    .local v4, lpTb:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 494
    .local v7, tvShareTo:Landroid/widget/TextView;
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v9, "share_to"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 495
    .local v5, resId:I
    if-lez v5, :cond_0

    .line 496
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 498
    :cond_0
    const v8, -0x303031

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 499
    const/4 v8, 0x1

    const/high16 v9, 0x4190

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 500
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 501
    .local v0, dp_9:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    .local v2, lpShareTo:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 504
    invoke-virtual {v2, v0, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 505
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 508
    new-instance v6, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 509
    .local v6, sv:Landroid/widget/HorizontalScrollView;
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 510
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 511
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 513
    .local v3, lpSv:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 514
    invoke-virtual {v6, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/EditPage;->llPlat:Landroid/widget/LinearLayout;

    .line 518
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPage;->llPlat:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 522
    return-object v1
.end method

.method private getSep()Landroid/view/View;
    .locals 5

    .prologue
    .line 477
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 478
    .local v2, vSep:Landroid/view/View;
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 479
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 480
    .local v0, dp_1:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v1, lpSep:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    return-object v2
.end method

.method private getThumbView()Landroid/widget/RelativeLayout;
    .locals 14

    .prologue
    .line 275
    new-instance v12, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    .line 276
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 277
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x52

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    .line 278
    .local v6, dp_82:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x62

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v7

    .line 279
    .local v7, dp_98:I
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v10, lpThumb:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    .line 284
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v13, "btn_back_nor"

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    .line 285
    .local v11, resId:I
    if-lez v11, :cond_0

    .line 286
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 288
    :cond_0
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    iget-object v13, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 292
    .local v3, dp_4:I
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 293
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x4a

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    .line 294
    .local v4, dp_74:I
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v9, lpImage:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 297
    .local v1, dp_16:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 298
    .local v5, dp_8:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v1, v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 299
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    new-instance v13, Lcn/sharesdk/onekeyshare/EditPage$2;

    invoke-direct {v13, p0}, Lcn/sharesdk/onekeyshare/EditPage$2;-><init>(Lcn/sharesdk/onekeyshare/EditPage;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v13, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, btn:Landroid/widget/Button;
    new-instance v12, Lcn/sharesdk/onekeyshare/EditPage$3;

    invoke-direct {v12, p0}, Lcn/sharesdk/onekeyshare/EditPage$3;-><init>(Lcn/sharesdk/onekeyshare/EditPage;)V

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v13, "img_cancel"

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    .line 321
    if-lez v11, :cond_1

    .line 322
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x14

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 325
    .local v2, dp_20:I
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v8, lpBtn:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 328
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 329
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 332
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v12
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 740
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 742
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showThumb()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 337
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v5, "imagePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, imagePath:Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v5, "viewToShare"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 339
    .local v3, viewToShare:Landroid/graphics/Bitmap;
    iput-boolean v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    .line 343
    invoke-static {v0}, Lcn/sharesdk/framework/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    if-eqz v4, :cond_0

    .line 355
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 356
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    :cond_0
    :goto_1
    return-void

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 347
    const/4 v4, 0x2

    :try_start_1
    invoke-static {v0, v4}, Lcn/sharesdk/framework/utils/BitmapHelper;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 348
    :catch_1
    move-exception v2

    .line 349
    .local v2, t1:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    iput-boolean v6, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    goto :goto_0

    .line 359
    .end local v1           #t:Ljava/lang/Throwable;
    .end local v2           #t1:Ljava/lang/Throwable;
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 360
    iput-boolean v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    .line 361
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;

    .line 363
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 368
    :cond_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v5, "imageUrl"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    new-instance v4, Lcn/sharesdk/onekeyshare/EditPage$4;

    invoke-direct {v4, p0}, Lcn/sharesdk/onekeyshare/EditPage$4;-><init>(Lcn/sharesdk/onekeyshare/EditPage;)V

    invoke-virtual {v4}, Lcn/sharesdk/onekeyshare/EditPage$4;->start()V

    goto :goto_1
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 15

    .prologue
    .line 641
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v12, "platform"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, name:Ljava/lang/String;
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v11, :cond_2

    const/4 v10, 0x0

    .line 643
    .local v10, size:I
    :goto_0
    new-array v11, v10, [Landroid/view/View;

    iput-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    .line 645
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x18

    invoke-static {v11, v12}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 646
    .local v0, dp_24:I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 647
    .local v5, lpItem:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x9

    invoke-static {v11, v12}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 648
    .local v1, dp_9:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v11, v12, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 649
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v6, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 651
    .local v6, lpMask:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v11, 0x33

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 652
    const/4 v9, 0x0

    .line 653
    .local v9, selection:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v10, :cond_3

    .line 654
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 655
    .local v2, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    add-int/lit8 v11, v10, -0x1

    if-lt v3, v11, :cond_0

    .line 657
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    :cond_0
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 660
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 663
    .local v4, iv:Landroid/widget/ImageView;
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 664
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v11, v11, v3

    invoke-direct {p0, v11}, Lcn/sharesdk/onekeyshare/EditPage;->getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 665
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 669
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    new-instance v12, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v12, v11, v3

    .line 670
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    aget-object v11, v11, v3

    const v12, -0x30000001

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 671
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    aget-object v11, v11, v3

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    if-eqz v7, :cond_1

    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 673
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    aget-object v11, v11, v3

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 674
    move v9, v3

    .line 677
    const/4 v11, 0x3

    iget-object v12, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v12, v12, v3

    invoke-static {v11, v12}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 679
    :cond_1
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    aget-object v11, v11, v3

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    aget-object v11, v11, v3

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 653
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 642
    .end local v0           #dp_24:I
    .end local v1           #dp_9:I
    .end local v2           #fl:Landroid/widget/FrameLayout;
    .end local v3           #i:I
    .end local v4           #iv:Landroid/widget/ImageView;
    .end local v5           #lpItem:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #lpMask:Landroid/widget/FrameLayout$LayoutParams;
    .end local v9           #selection:I
    .end local v10           #size:I
    :cond_2
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v10, v11

    goto/16 :goto_0

    .line 683
    .restart local v0       #dp_24:I
    .restart local v1       #dp_9:I
    .restart local v3       #i:I
    .restart local v5       #lpItem:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6       #lpMask:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v9       #selection:I
    .restart local v10       #size:I
    :cond_3
    move v8, v9

    .line 684
    .local v8, postSel:I
    const/4 v11, 0x0

    const-wide/16 v12, 0x14d

    new-instance v14, Lcn/sharesdk/onekeyshare/EditPage$6;

    invoke-direct {v14, p0, v8, v0, v1}, Lcn/sharesdk/onekeyshare/EditPage$6;-><init>(Lcn/sharesdk/onekeyshare/EditPage;III)V

    invoke-static {v11, v12, v13, v14}, Lcn/sharesdk/framework/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    .line 691
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 724
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 714
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 569
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v7}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 570
    const/4 v2, 0x0

    .line 571
    .local v2, plat:Lcn/sharesdk/framework/Platform;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 572
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 573
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v2, v7, v1

    .line 579
    :cond_0
    if-eqz v2, :cond_1

    .line 580
    const/4 v7, 0x5

    invoke-static {v7, v2}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->finish()V

    .line 637
    .end local v1           #i:I
    .end local v2           #plat:Lcn/sharesdk/framework/Platform;
    .end local p1
    :cond_2
    :goto_1
    return-void

    .line 571
    .restart local v1       #i:I
    .restart local v2       #plat:Lcn/sharesdk/framework/Platform;
    .restart local p1
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v1           #i:I
    .end local v2           #plat:Lcn/sharesdk/framework/Platform;
    :cond_4
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v7}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 588
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, text:Ljava/lang/String;
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-boolean v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z

    if-nez v7, :cond_5

    .line 591
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "imagePath"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    .line 592
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "viewToShare"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "imageUrl"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_5
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 605
    .local v0, editRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v5, 0x0

    .line 606
    .local v5, selected:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    array-length v7, v7

    if-ge v1, v7, :cond_9

    .line 607
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->views:[Landroid/view/View;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_6

    .line 608
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const/4 v5, 0x1

    .line 606
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 594
    .end local v0           #editRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1           #i:I
    .end local v5           #selected:Z
    :cond_7
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "imageUrl"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_8

    .line 595
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "imagePath"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "viewToShare"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 598
    :cond_8
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "imageUrl"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    const-string v8, "imagePath"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 613
    .restart local v0       #editRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1       #i:I
    .restart local v5       #selected:Z
    :cond_9
    if-eqz v5, :cond_a

    .line 614
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 615
    .local v3, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "editRes"

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/EditPage;->setResult(Ljava/util/HashMap;)V

    .line 617
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->finish()V

    goto/16 :goto_1

    .line 619
    .end local v3           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    const-string v8, "select_one_plat_at_least"

    invoke-static {v7, v8}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 620
    .local v4, resId:I
    if-lez v4, :cond_2

    .line 621
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 627
    .end local v0           #editRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1           #i:I
    .end local v4           #resId:I
    .end local v5           #selected:Z
    .end local v6           #text:Ljava/lang/String;
    :cond_b
    instance-of v7, p1, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_c

    .line 628
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->performClick()Z

    goto/16 :goto_1

    .line 632
    .restart local p1
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v8, :cond_d

    .line 633
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 635
    :cond_d
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const-wide/16 v4, 0x3e8

    const v3, 0x7f323232

    .line 754
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 755
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 756
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->hideSoftInput()V

    .line 757
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 758
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 760
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 761
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/EditPage$7;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/EditPage$7;-><init>(Lcn/sharesdk/onekeyshare/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 780
    :goto_0
    return-void

    .line 768
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->hideSoftInput()V

    .line 769
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 770
    .restart local v1       #win:Landroid/view/Window;
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 772
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 773
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/EditPage$8;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/EditPage$8;-><init>(Lcn/sharesdk/onekeyshare/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPage;->finish()V

    .line 153
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->genBackground()V

    .line 119
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->getPageView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcn/sharesdk/onekeyshare/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 121
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->showThumb()V

    .line 124
    new-instance v0, Lcn/sharesdk/onekeyshare/EditPage$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/EditPage$1;-><init>(Lcn/sharesdk/onekeyshare/EditPage;)V

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/EditPage$1;->start()V

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 749
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPage;->hideSoftInput()V

    .line 750
    invoke-super {p0}, Lcn/sharesdk/framework/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    const-string v4, "selected"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    const-string v4, "selected"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 730
    .local v3, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 732
    .local v2, sel:Ljava/lang/String;
    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 734
    .end local v2           #sel:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 736
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v3           #selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 717
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    rsub-int v0, v1, 0x8c

    .line 718
    .local v0, remain:I
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage;->tvCounter:Landroid/widget/TextView;

    if-lez v0, :cond_0

    const v1, -0x303031

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    return-void

    .line 719
    :cond_0
    const/high16 v1, -0x1

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcn/sharesdk/framework/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 99
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 100
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setBackGround(Landroid/view/View;)V
    .locals 0
    .parameter "bgView"

    .prologue
    .line 109
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage;->tmpBgView:Landroid/view/View;

    .line 110
    return-void
.end method

.method public setDialogMode()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/EditPage;->dialogMode:Z

    .line 93
    return-void
.end method

.method public setShareData(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;

    .line 88
    return-void
.end method
