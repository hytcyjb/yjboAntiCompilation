.class public Lx/StateListDrawableWrapper;
.super Landroid/graphics/drawable/StateListDrawable;
.source "StateListDrawableWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x2

    .line 25
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    .line 26
    if-ne v7, v10, :cond_0

    .line 31
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    const/4 v4, 0x0

    .line 36
    .local v4, drawableRes:I
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    .line 37
    .local v0, attrCount:I
    add-int/lit8 v8, v0, -0x1

    new-array v6, v8, [I

    .line 38
    .local v6, states:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_5

    .line 40
    invoke-interface {p2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, attrValue:Ljava/lang/String;
    const-string v8, "drawable"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 44
    const/4 v8, 0x0

    invoke-interface {p2, v5, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v4

    .line 38
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 48
    :cond_2
    const-string v8, "false"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 52
    const-string v8, "state_enabled"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 53
    const v8, 0x101009e

    aput v8, v6, v5

    .line 56
    :cond_3
    const-string v8, "state_pressed"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 57
    const v8, 0x10100a7

    aput v8, v6, v5

    .line 60
    :cond_4
    const-string v8, "state_focused"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 61
    const v8, 0x101009c

    aput v8, v6, v5

    goto :goto_2

    .line 83
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v4           #drawableRes:I
    .end local v5           #i:I
    .end local v6           #states:[I
    .end local v7           #type:I
    :catch_0
    move-exception v8

    .line 86
    :goto_3
    return-void

    .line 67
    .restart local v0       #attrCount:I
    .restart local v4       #drawableRes:I
    .restart local v5       #i:I
    .restart local v6       #states:[I
    .restart local v7       #type:I
    :cond_5
    if-eqz v4, :cond_6

    .line 68
    invoke-static {v4}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 79
    .local v3, dr:Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {p0, v6, v3}, Lx/StateListDrawableWrapper;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 70
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    .line 72
    if-eq v7, v10, :cond_7

    .line 73
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "child tag defining a drawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 76
    :cond_7
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 82
    .end local v0           #attrCount:I
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .end local v4           #drawableRes:I
    .end local v5           #i:I
    .end local v6           #states:[I
    :cond_8
    invoke-virtual {p0}, Lx/StateListDrawableWrapper;->getState()[I

    move-result-object v8

    invoke-virtual {p0, v8}, Lx/StateListDrawableWrapper;->onStateChange([I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method
