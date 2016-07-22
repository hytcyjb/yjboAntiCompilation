.class public Lx/AttributeSetWrapper;
.super Ljava/lang/Object;
.source "AttributeSetWrapper.java"

# interfaces
.implements Landroid/util/AttributeSet;


# static fields
.field public static final ATTRIBUTE_BACKGROUND:Ljava/lang/String; = "background"

.field public static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private attrs:Landroid/util/AttributeSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    .line 22
    return-void
.end method


# virtual methods
.method public getAttributeBooleanValue(IZ)Z
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 77
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v0

    return v0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 53
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 93
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeFloatValue(IF)F

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 69
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getAttributeIntValue(II)I
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 85
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 61
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1
    .parameter "index"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 73
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 49
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/util/AttributeSet;->getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 29
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNameResource(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v0

    return v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 81
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 57
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 89
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 65
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 33
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 37
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundResId()I
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0}, Landroid/util/AttributeSet;->getIdAttribute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 105
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1}, Landroid/util/AttributeSet;->getIdAttributeResourceValue(I)I

    move-result v0

    return v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lx/AttributeSetWrapper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    return v0
.end method
