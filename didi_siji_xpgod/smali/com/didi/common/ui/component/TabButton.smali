.class public Lcom/didi/common/ui/component/TabButton;
.super Landroid/widget/LinearLayout;
.source "TabButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/TabButton$1;,
        Lcom/didi/common/ui/component/TabButton$SavedState;,
        Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/didi/common/ui/component/TabButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/component/TabButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v4, p0, Lcom/didi/common/ui/component/TabButton;->mChecked:Z

    .line 52
    sget-object v3, Lcom/sdu/didi/psnger/R$styleable;->TabButton:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 55
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0, v2}, Lcom/didi/common/ui/component/TabButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :goto_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 65
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/TabButton;->setChecked(Z)V

    .line 67
    invoke-virtual {p0, v5}, Lcom/didi/common/ui/component/TabButton;->setClickable(Z)V

    .line 68
    invoke-virtual {p0, v5}, Lcom/didi/common/ui/component/TabButton;->setFocusable(Z)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void

    .line 61
    .end local v1           #checked:Z
    :cond_0
    const v3, 0x7f0202d6

    invoke-virtual {p0, v3}, Lcom/didi/common/ui/component/TabButton;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 251
    iget-object v1, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->getDrawableState()[I

    move-result-object v0

    .line 255
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 257
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->invalidate()V

    .line 259
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/didi/common/ui/component/TabButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 240
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 241
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    sget-object v1, Lcom/didi/common/ui/component/TabButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/didi/common/ui/component/TabButton;->mergeDrawableStates([I[I)[I

    .line 244
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 217
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 218
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 222
    .local v1, height:I
    const/4 v2, 0x0

    .line 233
    .local v2, y:I
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v5, v2, v1

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    .end local v1           #height:I
    .end local v2           #y:I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 320
    move-object v0, p1

    check-cast v0, Lcom/didi/common/ui/component/TabButton$SavedState;

    .line 322
    .local v0, ss:Lcom/didi/common/ui/component/TabButton$SavedState;
    invoke-virtual {v0}, Lcom/didi/common/ui/component/TabButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 323
    iget-boolean v1, v0, Lcom/didi/common/ui/component/TabButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/TabButton;->setChecked(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->requestLayout()V

    .line 325
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 312
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/didi/common/ui/component/TabButton$SavedState;

    invoke-direct {v0, v1}, Lcom/didi/common/ui/component/TabButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 314
    .local v0, ss:Lcom/didi/common/ui/component/TabButton$SavedState;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/didi/common/ui/component/TabButton$SavedState;->checked:Z

    .line 315
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->toggle()V

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 171
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/didi/common/ui/component/TabButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    iput p1, p0, Lcom/didi/common/ui/component/TabButton;->mButtonResource:I

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/didi/common/ui/component/TabButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 179
    iget v1, p0, Lcom/didi/common/ui/component/TabButton;->mButtonResource:I

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    :cond_1
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/TabButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    if-eqz p1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 194
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/TabButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 198
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 199
    iput-object p1, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 202
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/TabButton;->setMinimumHeight(I)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->refreshDrawableState()V

    .line 206
    return-void

    :cond_2
    move v0, v1

    .line 198
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/didi/common/ui/component/TabButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 106
    iput-boolean p1, p0, Lcom/didi/common/ui/component/TabButton;->mChecked:Z

    .line 107
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->refreshDrawableState()V

    .line 110
    iget-boolean v0, p0, Lcom/didi/common/ui/component/TabButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/component/TabButton;->mBroadcasting:Z

    .line 115
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/didi/common/ui/component/TabButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/didi/common/ui/component/TabButton;Z)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mOnCheckedChangeWidgetListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mOnCheckedChangeWidgetListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/didi/common/ui/component/TabButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/didi/common/ui/component/TabButton;Z)V

    .line 122
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/TabButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/didi/common/ui/component/TabButton;->mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    .line 134
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/didi/common/ui/component/TabButton;->mOnCheckedChangeWidgetListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    .line 146
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-boolean v0, p0, Lcom/didi/common/ui/component/TabButton;->mChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/TabButton;->setChecked(Z)V

    .line 77
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/component/TabButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
