.class public Lcom/didi/common/helper/XmlAttibuteHelper;
.super Ljava/lang/Object;
.source "XmlAttibuteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/XmlAttibuteHelper$1;,
        Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_BACKGROUND:Ljava/lang/String; = "background"

.field public static final ATTRIBUTE_SRC:Ljava/lang/String; = "src"

.field public static final NAMESPACE_X_VIEW:Ljava/lang/String; = "http://schemas.android.com/apk/res/com.sdu.didi.psnger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    return-void
.end method

.method public static getBackground(Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    sget-object v11, Lcom/sdu/didi/psnger/R$styleable;->x:[I

    invoke-virtual {v10, p0, v11}, Lcom/didi/common/base/BaseApplication;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 48
    .local v8, typedArray:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 49
    .local v9, typedValue:Landroid/util/TypedValue;
    if-eqz v9, :cond_0

    iget-object v10, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v10, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v1

    .line 51
    :cond_1
    iget-object v10, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, name:Ljava/lang/String;
    iget v7, v9, Landroid/util/TypedValue;->resourceId:I

    .line 54
    .local v7, resId:I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    if-eqz v7, :cond_0

    .line 59
    const-string v10, ".9.png"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 60
    invoke-static {v9}, Lcom/didi/common/helper/XmlAttibuteHelper;->getNinePatchDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    .line 62
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 75
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 76
    .local v6, r:Landroid/content/res/Resources;
    const-string v10, ".xml"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 77
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 79
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parser.getName() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  parser.getAttributeCount() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 82
    invoke-static {v7, v4}, Lcom/didi/common/helper/XmlAttibuteHelper;->parseSelector(ILjava/lang/String;)Z

    move-result v3

    .line 83
    .local v3, isSelector:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSelector : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 84
    if-eqz v3, :cond_5

    .line 85
    new-instance v1, Lx/StateListDrawableWrapper;

    invoke-direct {v1}, Lx/StateListDrawableWrapper;-><init>()V

    .line 86
    .local v1, d:Lx/StateListDrawableWrapper;
    invoke-virtual {v1, v6, v5, p0}, Lx/StateListDrawableWrapper;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSelector : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " drawable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lx/StateListDrawableWrapper;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    .end local v1           #d:Lx/StateListDrawableWrapper;
    .end local v3           #isSelector:Z
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #r:Landroid/content/res/Resources;
    :cond_3
    const-string v10, ".png"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, ".jpg"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 69
    :cond_4
    invoke-static {v9}, Lcom/didi/common/helper/XmlAttibuteHelper;->getResource(Landroid/util/TypedValue;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getBackground \uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bitmap : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    if-eqz v0, :cond_2

    .line 72
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 92
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #isSelector:Z
    .restart local v5       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v6       #r:Landroid/content/res/Resources;
    :cond_5
    :try_start_0
    invoke-static {v6, v5}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 99
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3           #isSelector:Z
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    :cond_6
    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 95
    .restart local v3       #isSelector:Z
    .restart local v5       #parser:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v2

    .line 96
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getBackgroundResourceId(Landroid/util/AttributeSet;)I
    .locals 3
    .parameter "attrs"

    .prologue
    .line 255
    const-string v0, "http://schemas.android.com/apk/res/com.sdu.didi.psnger"

    const-string v1, "background"

    const/4 v2, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 185
    .local v8, typedValue:Landroid/util/TypedValue;
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 186
    .local v7, r:Landroid/content/res/Resources;
    const/4 v9, 0x1

    invoke-virtual {v7, p0, v8, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 187
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v9, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v2

    .line 189
    :cond_1
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, name:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 194
    const-string v9, ".9.png"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 195
    invoke-static {v8}, Lcom/didi/common/helper/XmlAttibuteHelper;->getNinePatchDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    .line 197
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 205
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v9, ".xml"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 206
    invoke-virtual {v7, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 208
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v5}, Lcom/didi/common/helper/XmlAttibuteHelper;->parseSelector(ILjava/lang/String;)Z

    move-result v4

    .line 210
    .local v4, isSelector:Z
    if-eqz v4, :cond_5

    .line 211
    new-instance v2, Lx/StateListDrawableWrapper;

    invoke-direct {v2}, Lx/StateListDrawableWrapper;-><init>()V

    .line 212
    .local v2, d:Lx/StateListDrawableWrapper;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 213
    .local v0, attrX:Landroid/util/AttributeSet;
    invoke-virtual {v2, v7, v6, v0}, Lx/StateListDrawableWrapper;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 200
    .end local v0           #attrX:Landroid/util/AttributeSet;
    .end local v2           #d:Lx/StateListDrawableWrapper;
    .end local v4           #isSelector:Z
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    :cond_3
    const-string v9, ".png"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, ".jpg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    :cond_4
    invoke-static {v8}, Lcom/didi/common/helper/XmlAttibuteHelper;->getResource(Landroid/util/TypedValue;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 202
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 217
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #isSelector:Z
    .restart local v6       #parser:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_0
    invoke-static {v7, v6}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 224
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4           #isSelector:Z
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    :cond_6
    :goto_1
    invoke-virtual {v7, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 220
    .restart local v4       #isSelector:Z
    .restart local v6       #parser:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v3

    .line 221
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageDrawable(Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v9

    sget-object v10, Lcom/sdu/didi/psnger/R$styleable;->x:[I

    invoke-virtual {v9, p0, v10}, Lcom/didi/common/base/BaseApplication;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 141
    .local v7, typedArray:Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 142
    .local v8, typedValue:Landroid/util/TypedValue;
    if-nez v8, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v1

    .line 144
    :cond_1
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, name:Ljava/lang/String;
    iget v6, v8, Landroid/util/TypedValue;->resourceId:I

    .line 146
    .local v6, resId:I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    if-eqz v6, :cond_0

    .line 151
    const-string v9, ".9.png"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 152
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ".9.png------------"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 154
    invoke-static {v8}, Lcom/didi/common/helper/XmlAttibuteHelper;->getNinePatchDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    .line 156
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 157
    const-string v9, "get--------ninie--------"

    invoke-static {v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v9, ".png"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, ".jpg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 161
    :cond_3
    invoke-static {v8}, Lcom/didi/common/helper/XmlAttibuteHelper;->getResource(Landroid/util/TypedValue;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 164
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 165
    .local v5, r:Landroid/content/res/Resources;
    const-string v9, ".xml"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 166
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 167
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    const-string v9, "selector"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 168
    new-instance v1, Lx/StateListDrawableWrapper;

    invoke-direct {v1}, Lx/StateListDrawableWrapper;-><init>()V

    .line 169
    .local v1, d:Lx/StateListDrawableWrapper;
    invoke-virtual {v1, v5, v4, p0}, Lx/StateListDrawableWrapper;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 173
    .end local v1           #d:Lx/StateListDrawableWrapper;
    :cond_5
    :try_start_0
    invoke-static {v5, v4}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 180
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    :cond_6
    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    .line 176
    .restart local v4       #parser:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v2

    .line 177
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getImageInputStream(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "resId"
    .parameter "name"

    .prologue
    .line 236
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 237
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 238
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 240
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 250
    :goto_0
    return-object v3

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    .line 244
    :catch_1
    move-exception v2

    .line 245
    .local v2, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 247
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getNinePatchDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 14
    .parameter "typedValue"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 261
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 262
    .local v1, r:Landroid/content/res/Resources;
    iget v8, p0, Landroid/util/TypedValue;->resourceId:I

    .line 264
    .local v8, rid:I
    invoke-static {v1, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 266
    .local v9, srcNinePatchBmp:Landroid/graphics/Bitmap;
    if-nez v9, :cond_0

    .line 320
    :goto_0
    return-object v5

    .line 270
    :cond_0
    const/4 v2, 0x0

    .line 271
    .local v2, tarNinePatchBmp:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 273
    .local v0, tarNinePatchDra:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getScaleRatio()F

    move-result v7

    .line 274
    .local v7, ratio:F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v11, v12, v7

    .line 275
    .local v11, tarWidth:F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v10, v12, v7

    .line 303
    .local v10, tarHeight:F
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "src chunk size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 304
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "src w: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " h: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 307
    .local v3, chunk:[B
    invoke-static {v3, v7}, Lcom/didi/common/helper/XmlAttibuteHelper;->newChunk([BF)Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;

    move-result-object v6

    .line 309
    .local v6, patchChunk:Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v13, 0x1

    invoke-static {v9, v11, v10, v12, v13}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 312
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tar w: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " h: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 313
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tar chunk size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 315
    iget-object v3, v6, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->chunk:[B

    .line 316
    iget-object v4, v6, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    .line 317
    .local v4, padding:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0           #tarNinePatchDra:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .restart local v0       #tarNinePatchDra:Landroid/graphics/drawable/NinePatchDrawable;
    move-object v5, v0

    .line 320
    goto/16 :goto_0
.end method

.method private static getResource(Landroid/util/TypedValue;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "typedValue"

    .prologue
    .line 228
    iget-object v4, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, name:Ljava/lang/String;
    iget v3, p0, Landroid/util/TypedValue;->resourceId:I

    .line 230
    .local v3, resId:I
    invoke-static {v3, v2}, Lcom/didi/common/helper/XmlAttibuteHelper;->getImageInputStream(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 231
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lutil/ImageUtil;->createSuitableDrawable(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static newChunk([BF)Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;
    .locals 9
    .parameter "chunk"
    .parameter "ratio"

    .prologue
    const/4 v6, 0x0

    .line 328
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 330
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 331
    .local v2, serialized:B
    if-nez v2, :cond_0

    move-object v1, v6

    .line 384
    :goto_0
    return-object v1

    .line 334
    :cond_0
    new-instance v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;

    invoke-direct {v1, v6}, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;-><init>(Lcom/didi/common/helper/XmlAttibuteHelper$1;)V

    .line 335
    .local v1, patchChunk:Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;
    array-length v6, p0

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 337
    .local v3, tarByteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 339
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    new-array v4, v6, [I

    .line 340
    .local v4, xDivs:[I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    new-array v5, v6, [I

    .line 342
    .local v5, yDivs:[I
    array-length v6, v4

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 343
    array-length v6, v5

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 345
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 347
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 348
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 351
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 352
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 353
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 354
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 357
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 358
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 359
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 360
    iget-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 361
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 363
    invoke-static {v4, v0, p1}, Lcom/didi/common/helper/XmlAttibuteHelper;->newDivs([ILjava/nio/ByteBuffer;F)V

    .line 364
    invoke-static {v5, v0, p1}, Lcom/didi/common/helper/XmlAttibuteHelper;->newDivs([ILjava/nio/ByteBuffer;F)V

    .line 376
    invoke-static {v4, v3}, Lcom/didi/common/helper/XmlAttibuteHelper;->putDivs([ILjava/nio/ByteBuffer;)V

    .line 377
    invoke-static {v5, v3}, Lcom/didi/common/helper/XmlAttibuteHelper;->putDivs([ILjava/nio/ByteBuffer;)V

    .line 379
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 383
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/helper/XmlAttibuteHelper$NinePatchChunk;->chunk:[B

    goto/16 :goto_0
.end method

.method private static newDivs([ILjava/nio/ByteBuffer;F)V
    .locals 6
    .parameter "divs"
    .parameter "byteBuffer"
    .parameter "ratio"

    .prologue
    .line 395
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 396
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 397
    .local v2, temp:I
    int-to-float v3, v2

    mul-float/2addr v3, p2

    float-to-int v3, v3

    aput v3, p0, v0

    .line 399
    aget v3, p0, v0

    sub-int v1, v3, v2

    .line 400
    .local v1, space:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 401
    add-int/lit8 v3, v0, 0x1

    aget v4, p0, v3

    add-int v5, v2, v1

    add-int/2addr v4, v5

    aput v4, p0, v3

    .line 395
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 403
    .end local v1           #space:I
    .end local v2           #temp:I
    :cond_0
    return-void
.end method

.method public static parseSelector(ILjava/lang/String;)Z
    .locals 7
    .parameter "xmlId"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 103
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 104
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 106
    .local v2, eventType:I
    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    .line 107
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 113
    :goto_0
    if-eq v2, v4, :cond_1

    .line 116
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 117
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "selector"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    :goto_1
    return v4

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e1:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v1           #e1:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v1           #e1:Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    .line 129
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_0

    .line 130
    :catch_2
    move-exception v0

    .line 131
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static putDivs([ILjava/nio/ByteBuffer;)V
    .locals 2
    .parameter "divs"
    .parameter "byteBuffer"

    .prologue
    .line 388
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 389
    aget v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method
