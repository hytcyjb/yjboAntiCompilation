.class public Lcom/didi/beatles/ui/component/TagLayout;
.super Landroid/widget/LinearLayout;
.source "TagLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/component/TagLayout$TagRow;,
        Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;
    }
.end annotation


# static fields
.field private static final MARGIN_LEFT:Ljava/lang/String; = "layout_marginLeft"

.field private static final MARGIN_RIGHT:Ljava/lang/String; = "layout_marginRight"

.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;

.field private mContext:Landroid/content/Context;

.field private mRowIntv:I

.field private mRowList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/didi/beatles/ui/component/TagLayout$TagRow;",
            ">;"
        }
    .end annotation
.end field

.field private mRowMarginLeft:I

.field private mRowMarginRight:I

.field private mRowMaxWidth:I

.field private mTagIntv:I

.field private mTagMargin:I

.field private mTagTextPaddingBottom:I

.field private mTagTextPaddingLeft:I

.field private mTagTextPaddingRight:I

.field private mTagTextPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/didi/beatles/ui/component/TagLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/beatles/ui/component/TagLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/high16 v1, 0x4120

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowIntv:I

    .line 59
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagMargin:I

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowList:Ljava/util/LinkedList;

    .line 98
    iput-object p1, p0, Lcom/didi/beatles/ui/component/TagLayout;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/TagLayout;->isInEditMode()Z

    .line 100
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/TagLayout;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4120

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowIntv:I

    .line 59
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagMargin:I

    .line 105
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowList:Ljava/util/LinkedList;

    .line 106
    iput-object p1, p0, Lcom/didi/beatles/ui/component/TagLayout;->mContext:Landroid/content/Context;

    .line 107
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "layout_marginLeft"

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, marginLeft:I
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "layout_marginRight"

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, marginRight:I
    sget-object v2, Lcom/didi/beatles/ui/component/TagLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "marginLeft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", marginRight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/TagLayout;->isInEditMode()Z

    .line 112
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/TagLayout;->init()V

    .line 114
    sget-object v2, Lcom/didi/beatles/ui/component/TagLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRowMaxWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMaxWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, 0x4120

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowIntv:I

    .line 59
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagMargin:I

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/component/TagLayout;)Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mCallback:Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;

    return-object v0
.end method

.method private addRow()Lcom/didi/beatles/ui/component/TagLayout$TagRow;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 122
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/TagLayout;->getScreenWidthPixels()I

    move-result v4

    iget v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginRight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMaxWidth:I

    .line 123
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/didi/beatles/ui/component/TagLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, rowLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .line 127
    .local v0, marginTop:I
    iget-object v4, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 128
    iget v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowIntv:I

    .line 129
    :cond_0
    iget v4, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginLeft:I

    iget v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginRight:I

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 132
    new-instance v2, Lcom/didi/beatles/ui/component/TagLayout$TagRow;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/didi/beatles/ui/component/TagLayout$TagRow;-><init>(Lcom/didi/beatles/ui/component/TagLayout;Lcom/didi/beatles/ui/component/TagLayout$1;)V

    .line 133
    .local v2, row:Lcom/didi/beatles/ui/component/TagLayout$TagRow;
    iput-object v3, v2, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mRowLayout:Landroid/widget/LinearLayout;

    .line 134
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v2, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mTagList:Ljava/util/LinkedList;

    .line 135
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v2, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mTagViewList:Ljava/util/LinkedList;

    .line 136
    iput v6, v2, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mWidth:I

    .line 137
    iget-object v4, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/component/TagLayout;->addView(Landroid/view/View;)V

    .line 139
    return-object v2
.end method

.method private getCharacterWidth(Landroid/widget/TextView;Ljava/lang/String;)I
    .locals 3
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 201
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    .line 203
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 204
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 205
    .local v1, textWidth:I
    goto :goto_0
.end method

.method private getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/TagLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x4100

    const/high16 v2, 0x40a0

    const/4 v1, 0x0

    .line 81
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingLeft:I

    .line 82
    invoke-static {v2}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingTop:I

    .line 83
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingRight:I

    .line 84
    invoke-static {v2}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingBottom:I

    .line 85
    iget v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagMargin:I

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagIntv:I

    .line 86
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginLeft:I

    .line 87
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginRight:I

    .line 88
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/TagLayout;->getScreenWidthPixels()I

    move-result v0

    iget v1, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMaxWidth:I

    .line 89
    sget-object v0, Lcom/didi/beatles/ui/component/TagLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTagTextPaddingLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTagTextPaddingTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTagTextPaddingRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTagTextPaddingBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTagIntv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagIntv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRowMarginLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRowMarginRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMarginRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRowIntv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowIntv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRowMaxWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)V
    .locals 11
    .parameter "tagStr"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 144
    new-instance v1, Landroid/widget/CheckedTextView;

    iget-object v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, newTagTextVieww:Landroid/widget/CheckedTextView;
    const v5, 0x7f0200b5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 146
    iget v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingLeft:I

    iget v6, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingTop:I

    iget v7, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingRight:I

    iget v8, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingBottom:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 147
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->setSingleLine()V

    .line 148
    const v5, 0x7f07004b

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    .line 151
    const/high16 v5, 0x4150

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setTextSize(F)V

    .line 152
    invoke-virtual {v1, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v1, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 155
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setGravity(I)V

    .line 158
    invoke-direct {p0, v1, p1}, Lcom/didi/beatles/ui/component/TagLayout;->getCharacterWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, textWidth:I
    iget v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingLeft:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagTextPaddingRight:I

    add-int v3, v5, v6

    .line 160
    .local v3, tagWidth:I
    sget-object v5, Lcom/didi/beatles/ui/component/TagLayout;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "textWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tagWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v5, Lcom/didi/beatles/ui/component/TagLayout$1;

    invoke-direct {v5, p0}, Lcom/didi/beatles/ui/component/TagLayout$1;-><init>(Lcom/didi/beatles/ui/component/TagLayout;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/TagLayout;->addRow()Lcom/didi/beatles/ui/component/TagLayout$TagRow;

    .line 178
    :cond_0
    iget-object v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;

    .line 179
    .local v0, lastRow:Lcom/didi/beatles/ui/component/TagLayout$TagRow;
    iget v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mWidth:I

    iget-object v6, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mTagList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget v7, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagIntv:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    iget v6, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMaxWidth:I

    if-le v5, v6, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/TagLayout;->addRow()Lcom/didi/beatles/ui/component/TagLayout$TagRow;

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #lastRow:Lcom/didi/beatles/ui/component/TagLayout$TagRow;
    check-cast v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;

    .line 188
    .restart local v0       #lastRow:Lcom/didi/beatles/ui/component/TagLayout$TagRow;
    iget v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mWidth:I

    iget-object v6, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mTagList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget v7, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagIntv:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    iget v6, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMaxWidth:I

    if-gt v5, v6, :cond_2

    iget v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mWidth:I

    iget-object v6, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mTagList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget v7, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagIntv:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    iget v6, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/didi/beatles/ui/component/TagLayout;->mRowMaxWidth:I

    if-le v5, v6, :cond_2

    .line 189
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 193
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mRowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mTagViewList:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mTagList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    iget v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mWidth:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/didi/beatles/ui/component/TagLayout$TagRow;->mWidth:I

    .line 198
    return-void

    .line 191
    :cond_2
    iget v5, p0, Lcom/didi/beatles/ui/component/TagLayout;->mTagMargin:I

    invoke-virtual {v2, v9, v9, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/TagLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 62
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 63
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/TagLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/beatles/ui/component/TagLayout;->mCallback:Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;

    .line 78
    return-void
.end method
