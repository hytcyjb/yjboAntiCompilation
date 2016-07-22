.class Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShareListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/ShareListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAvatar:Lcom/android/volley/toolbox/NetworkImageView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field private mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

.field public mName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/fragment/ShareListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/fragment/ShareListAdapter;Lcom/didi/common/ui/fragment/ShareListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;-><init>(Lcom/didi/common/ui/fragment/ShareListAdapter;)V

    return-void
.end method

.method private isChecked()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$300(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setInviteTextColor()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$300(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 107
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f07002f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightTextColor(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    .end local v0           #titleBar:Lcom/didi/frame/titlebar/TitleBar;
    :cond_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 110
    .restart local v0       #titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f070021

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public create(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$000(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f080559

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/NetworkImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mAvatar:Lcom/android/volley/toolbox/NetworkImageView;

    .line 66
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f08055a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f080320

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 68
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->renderPhoto()V

    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 97
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$300(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->setInviteTextColor()V

    .line 102
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mToInviteSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$300(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->toggleSelection()V

    .line 117
    return-void
.end method

.method public renderPhoto()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mAvatar:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$100(Lcom/didi/common/ui/fragment/ShareListAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mAvatar:Lcom/android/volley/toolbox/NetworkImageView;

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageResId(I)V

    .line 87
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mAvatar:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$200(Lcom/didi/common/ui/fragment/ShareListAdapter;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    sget v3, Lcom/didi/common/config/Configuration;->AVATAR_RADIUS:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;I)V

    goto :goto_0
.end method

.method public toggleSelection()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/ShareListAdapter;

    #getter for: Lcom/didi/common/ui/fragment/ShareListAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->access$000(Lcom/didi/common/ui/fragment/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    .line 77
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareListAdapter$ViewHolder;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    :cond_0
    return-void
.end method
