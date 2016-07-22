.class public Lcn/sharesdk/onekeyshare/theme/classic/EditPage;
.super Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DIM_COLOR:I = 0x7f323232

.field private static final MAX_TEXT_COUNT:I = 0x8c


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private etContent:Landroid/widget/EditText;

.field private image:Landroid/graphics/Bitmap;

.field private imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

.field private ivImage:Landroid/widget/ImageView;

.field private ivPin:Landroid/widget/ImageView;

.field private llBody:Landroid/widget/LinearLayout;

.field private llPlat:Landroid/widget/LinearLayout;

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private rlPage:Landroid/widget/RelativeLayout;

.field private rlThumb:Landroid/widget/RelativeLayout;

.field private tvCounter:Landroid/widget/TextView;

.field private views:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object p1
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V

    return-void
.end method

.method static synthetic access$1200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private genBackground()V
    .locals 7

    .prologue
    .line 494
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f323232

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    .line 495
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 497
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/sharesdk/framework/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 498
    .local v0, bgBm:Landroid/graphics/Bitmap;
    const/16 v3, 0x14

    const/16 v4, 0x8

    invoke-static {v0, v3, v4}, Lcn/sharesdk/framework/utils/BitmapHelper;->blur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 500
    .local v1, blurBm:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v0           #bgBm:Landroid/graphics/Bitmap;
    .end local v1           #blurBm:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v2

    .line 502
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 13
    .parameter "platform"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 376
    const/4 v2, 0x0

    .line 421
    :goto_0
    return-object v2

    .line 378
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 379
    .local v2, llAt:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 381
    .local v3, lpAt:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 382
    const/16 v9, 0x53

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 383
    const/high16 v9, 0x3f80

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 384
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v9, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;

    invoke-direct {v9, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 394
    .local v7, tvAt:Landroid/widget/TextView;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "btn_back_nor"

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 395
    .local v5, resId:I
    if-lez v5, :cond_1

    .line 396
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 399
    .local v1, dp_32:I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    const/4 v9, 0x1

    const/high16 v10, 0x4190

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 401
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtUserButtonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 403
    .local v0, dp_2:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 404
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 405
    const/high16 v9, -0x100

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 407
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 410
    .local v8, tvName:Landroid/widget/TextView;
    const/4 v9, 0x1

    const/high16 v10, 0x4190

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 411
    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "list_friends"

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 413
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 417
    .local v4, lpName:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 418
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private getBodyBottom()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 347
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 348
    .local v1, llBottom:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 352
    .local v0, line:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    .line 358
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const/16 v4, 0x8c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const v4, -0x303031

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x4190

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 361
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 362
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v2, lpCounter:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 365
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    return-object v1
.end method

.method private getImagePin()Landroid/widget/ImageView;
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 475
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    .line 476
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v5, "pin"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 477
    .local v3, resId:I
    if-lez v3, :cond_0

    .line 478
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 481
    .local v1, dp_80:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 482
    .local v0, dp_36:I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 484
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 485
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 486
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 487
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v4
.end method

.method private getMainBody()Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v8, -0x1

    const/high16 v10, 0x3f80

    const/4 v9, -0x2

    .line 234
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 235
    .local v2, llMainBody:Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v5, lpMain:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 239
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 240
    .local v0, dp_4:I
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, llContent:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v3, lpContent:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 247
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    .line 251
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 252
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v4, lpEt:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 258
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getThumbView()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getBodyBottom()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    return-object v2
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "platform"

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    const-string v1, ""

    .line 513
    :goto_0
    return-object v1

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, resId:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

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

    .line 207
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    .line 208
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 209
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v4, "edittext_back"

    invoke-static {v3, v4}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, resId:I
    if-lez v2, :cond_0

    .line 211
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 213
    :cond_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v1, lpBody:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x5

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 217
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    const/4 v3, 0x7

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 219
    iget-boolean v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-nez v3, :cond_1

    .line 220
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 223
    .local v0, dp_3:I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getMainBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getSep()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatformList()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    return-object v3
.end method

.method private getPageTitle()Lcn/sharesdk/framework/TitleLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 178
    new-instance v2, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 179
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/TitleLayout;->setId(I)V

    .line 184
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "multi_share"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, resId:I
    if-lez v1, :cond_0

    .line 187
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "share"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 191
    if-lez v1, :cond_1

    .line 192
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 199
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 200
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    return-object v2
.end method

.method private getPageView()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    .line 150
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-eqz v4, :cond_0

    .line 153
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .local v2, rlDialog:Landroid/widget/RelativeLayout;
    const v4, -0x3fcdcdce

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 155
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 156
    .local v0, dp_8:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/sharesdk/framework/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    sub-int v3, v4, v5

    .line 157
    .local v3, width:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v1, lpDialog:Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 160
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 161
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 173
    .end local v0           #dp_8:I
    .end local v1           #lpDialog:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #rlDialog:Landroid/widget/RelativeLayout;
    .end local v3           #width:I
    :goto_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v4

    .line 169
    :cond_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "plat"

    .prologue
    const/4 v3, 0x0

    .line 622
    if-nez p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-object v3

    .line 626
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 631
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

    .line 632
    .local v2, resName:Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-static {v4, v2}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 633
    .local v1, resId:I
    if-lez v1, :cond_0

    .line 634
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

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

    .line 436
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 437
    .local v1, llToolBar:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 439
    .local v4, lpTb:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 442
    .local v7, tvShareTo:Landroid/widget/TextView;
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v9, "share_to"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 443
    .local v5, resId:I
    if-lez v5, :cond_0

    .line 444
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 446
    :cond_0
    const v8, -0x303031

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    const/4 v8, 0x1

    const/high16 v9, 0x4190

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 448
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 449
    .local v0, dp_9:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 451
    .local v2, lpShareTo:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 452
    invoke-virtual {v2, v0, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 453
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    new-instance v6, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 457
    .local v6, sv:Landroid/widget/HorizontalScrollView;
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 458
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 459
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 461
    .local v3, lpSv:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 462
    invoke-virtual {v6, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    .line 466
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 470
    return-object v1
.end method

.method private getSep()Landroid/view/View;
    .locals 5

    .prologue
    .line 425
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 426
    .local v2, vSep:Landroid/view/View;
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 428
    .local v0, dp_1:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 430
    .local v1, lpSep:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    return-object v2
.end method

.method private getThumbView()Landroid/widget/RelativeLayout;
    .locals 14

    .prologue
    .line 269
    new-instance v12, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    .line 270
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 271
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x52

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    .line 272
    .local v6, dp_82:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x62

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v7

    .line 273
    .local v7, dp_98:I
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v10, lpThumb:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    .line 278
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v13, "btn_back_nor"

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    .line 279
    .local v11, resId:I
    if-lez v11, :cond_0

    .line 280
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 282
    :cond_0
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 283
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    iget-object v13, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 285
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 286
    .local v3, dp_4:I
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 287
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x4a

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    .line 288
    .local v4, dp_74:I
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    .local v9, lpImage:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 291
    .local v1, dp_16:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 292
    .local v5, dp_8:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v1, v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    new-instance v13, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;

    invoke-direct {v13, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v13, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 305
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, btn:Landroid/widget/Button;
    new-instance v12, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;

    invoke-direct {v12, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v13, "img_cancel"

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    .line 315
    if-lez v11, :cond_1

    .line 316
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x14

    invoke-static {v12, v13}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 319
    .local v2, dp_20:I
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 321
    .local v8, lpBtn:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 322
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 323
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 327
    iget-object v12, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v12
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 663
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 665
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showThumb()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z

    .line 344
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 19

    .prologue
    .line 570
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v15, :cond_2

    const/4 v14, 0x0

    .line 571
    .local v14, size:I
    :goto_0
    new-array v15, v14, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x18

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 574
    .local v2, dp_24:I
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 575
    .local v8, lpItem:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x9

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 576
    .local v3, dp_9:I
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v15, v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 577
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 579
    .local v9, lpMask:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v15, 0x33

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 580
    const/4 v13, 0x0

    .line 581
    .local v13, selection:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v14, :cond_4

    .line 582
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v4, v15}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 583
    .local v4, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    add-int/lit8 v15, v14, -0x1

    if-lt v5, v15, :cond_0

    .line 585
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v7, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 591
    .local v7, iv:Landroid/widget/ImageView;
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v15, v15, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    new-instance v16, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v16, v15, v5

    .line 598
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v15, v15, v5

    const v16, -0x30000001

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setBackgroundColor(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v15, v15, v5

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v15, v15, v5

    invoke-virtual {v15}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v11

    .line 601
    .local v11, platformName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/sharesdk/framework/Platform;

    .line 602
    .local v10, plat:Lcn/sharesdk/framework/Platform;
    invoke-virtual {v10}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v15, v15, v5

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 604
    move v13, v5

    goto :goto_2

    .line 570
    .end local v2           #dp_24:I
    .end local v3           #dp_9:I
    .end local v4           #fl:Landroid/widget/FrameLayout;
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #iv:Landroid/widget/ImageView;
    .end local v8           #lpItem:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #lpMask:Landroid/widget/FrameLayout$LayoutParams;
    .end local v10           #plat:Lcn/sharesdk/framework/Platform;
    .end local v11           #platformName:Ljava/lang/String;
    .end local v13           #selection:I
    .end local v14           #size:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v14, v15

    goto/16 :goto_0

    .line 607
    .restart local v2       #dp_24:I
    .restart local v3       #dp_9:I
    .restart local v4       #fl:Landroid/widget/FrameLayout;
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #iv:Landroid/widget/ImageView;
    .restart local v8       #lpItem:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9       #lpMask:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11       #platformName:Ljava/lang/String;
    .restart local v13       #selection:I
    .restart local v14       #size:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v15, v15, v5

    invoke-virtual {v15, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v15, v15, v5

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 581
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 611
    .end local v4           #fl:Landroid/widget/FrameLayout;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #iv:Landroid/widget/ImageView;
    .end local v11           #platformName:Ljava/lang/String;
    :cond_4
    move v12, v13

    .line 612
    .local v12, postSel:I
    const/4 v15, 0x0

    const-wide/16 v16, 0x14d

    new-instance v18, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v2, v3}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;III)V

    invoke-static/range {v15 .. v18}, Lcn/sharesdk/framework/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    .line 619
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 652
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 642
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 517
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 518
    const/4 v1, 0x0

    .line 519
    .local v1, plat:Lcn/sharesdk/framework/Platform;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 520
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 521
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v1, v4, v0

    .line 527
    :cond_0
    if-eqz v1, :cond_1

    .line 528
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 566
    .end local v0           #i:I
    .end local v1           #plat:Lcn/sharesdk/framework/Platform;
    .end local p1
    :cond_2
    :goto_1
    return-void

    .line 519
    .restart local v0       #i:I
    .restart local v1       #plat:Lcn/sharesdk/framework/Platform;
    .restart local p1
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    .end local v0           #i:I
    .end local v1           #plat:Lcn/sharesdk/framework/Platform;
    :cond_4
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 535
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v5, "text"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 539
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 540
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 541
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v5, v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 545
    :cond_6
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 546
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->setResultAndFinish()V

    goto :goto_1

    .line 548
    :cond_7
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v5, "select_one_plat_at_least"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 549
    .local v2, resId:I
    if-lez v2, :cond_2

    .line 550
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 556
    .end local v0           #i:I
    .end local v2           #resId:I
    .end local v3           #text:Ljava/lang/String;
    :cond_8
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_9

    .line 557
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 561
    .restart local p1
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_a

    .line 562
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 564
    :cond_a
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const-wide/16 v4, 0x3e8

    const v3, 0x7f323232

    .line 677
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 678
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 679
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 680
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 681
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 683
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 684
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    :goto_0
    return-void

    .line 691
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 692
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 693
    .restart local v1       #win:Landroid/view/Window;
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 695
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 696
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 147
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V

    .line 113
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 115
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->showThumb()V

    .line 118
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->start()V

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 672
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 673
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 2
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
    .line 655
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, atText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 657
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 659
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 645
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    rsub-int v0, v1, 0x8c

    .line 646
    .local v0, remain:I
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    if-lez v0, :cond_0

    const v1, -0x303031

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    return-void

    .line 647
    :cond_0
    const/high16 v1, -0x1

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 96
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 97
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 98
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
