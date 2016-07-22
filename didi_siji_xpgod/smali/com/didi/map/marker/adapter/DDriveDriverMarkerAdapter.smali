.class public Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "DDriveDriverMarkerAdapter.java"


# instance fields
.field private hideDriveCount:Z

.field private mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 28
    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->setLayout(I)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;Landroid/widget/LinearLayout;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->adjustDriverArrowParams(Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method private adjustDriverArrowParams(Landroid/widget/LinearLayout;I)V
    .locals 3
    .parameter "infoLayout"
    .parameter "adjustedWidth"

    .prologue
    .line 117
    const v2, 0x7f0804bf

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, year:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    if-lez p2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lt p2, v2, :cond_0

    .line 120
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_0
    return-void
.end method

.method private initDriverCountView(Landroid/view/View;)V
    .locals 4
    .parameter "infoLayout"

    .prologue
    .line 99
    const v2, 0x7f0804be

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, number:Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, numBuilder:Ljava/lang/StringBuilder;
    const v2, 0x7f0b02fb

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v2, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget v2, v2, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->drivingCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b02fc

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method private initDriverYearView(Landroid/view/View;)V
    .locals 4
    .parameter "infoLayout"

    .prologue
    .line 108
    const v2, 0x7f0804bf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, year:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v1, yearBuilder:Ljava/lang/StringBuilder;
    const v2, 0x7f0b0318

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v2, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget v2, v2, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->driveingAge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0319

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method


# virtual methods
.method public setDriver(Lcom/didi/ddrive/net/http/response/NearByDriveInfo;Z)V
    .locals 0
    .parameter "driver"
    .parameter "hideDriveCount"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    .line 33
    iput-boolean p2, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->hideDriveCount:Z

    .line 34
    return-void
.end method

.method protected setInfo(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/high16 v8, 0x4080

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 45
    iget-object v5, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    if-nez v5, :cond_0

    .line 96
    :goto_0
    return-void

    .line 49
    :cond_0
    const v5, 0x7f0804bb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 50
    .local v3, photoBG:Landroid/widget/ImageView;
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    :goto_1
    const v5, 0x7f08036d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, name:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget-object v5, v5, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v5, 0x7f0804c1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/didi/common/ui/component/FiveStar;

    .line 60
    .local v4, star:Lcom/didi/common/ui/component/FiveStar;
    iget-object v5, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget v5, v5, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->starLever:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_1

    .line 61
    iget-object v5, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iput v8, v5, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->starLever:F

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget v5, v5, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->starLever:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/didi/common/ui/component/FiveStar;->setLevel(I)V

    .line 65
    const v5, 0x7f0804bd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    .local v0, driverInfoWithCountLayout:Landroid/widget/LinearLayout;
    const v5, 0x7f0804c0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 69
    .local v1, driverInfoWithOutCountLayout:Landroid/widget/LinearLayout;
    iget-boolean v5, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->hideDriveCount:Z

    if-eqz v5, :cond_3

    .line 70
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    invoke-direct {p0, v1}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->initDriverYearView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;

    invoke-direct {v6, p0, v1, v2, v4}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter$1;-><init>(Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/didi/common/ui/component/FiveStar;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 53
    .end local v0           #driverInfoWithCountLayout:Landroid/widget/LinearLayout;
    .end local v1           #driverInfoWithOutCountLayout:Landroid/widget/LinearLayout;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v4           #star:Lcom/didi/common/ui/component/FiveStar;
    :cond_2
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 89
    .restart local v0       #driverInfoWithCountLayout:Landroid/widget/LinearLayout;
    .restart local v1       #driverInfoWithOutCountLayout:Landroid/widget/LinearLayout;
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v4       #star:Lcom/didi/common/ui/component/FiveStar;
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    invoke-direct {p0, v0}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->initDriverCountView(Landroid/view/View;)V

    .line 93
    invoke-direct {p0, v0}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->initDriverYearView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const v3, 0x7f0804ba

    .line 37
    iget-object v2, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .local v0, photo:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    iget-object v2, p0, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 40
    .local v1, photop:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    return-void
.end method
