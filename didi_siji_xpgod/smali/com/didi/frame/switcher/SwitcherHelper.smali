.class public Lcom/didi/frame/switcher/SwitcherHelper;
.super Ljava/lang/Object;
.source "SwitcherHelper.java"


# static fields
.field public static isFirstLoad:Z

.field private static mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

.field private static mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

.field private static switchListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/switcher/SwitcherListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/switcher/SwitcherHelper;->isFirstLoad:Z

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->switchListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->switchListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static checkSwitcher(Lcom/didi/frame/business/Business;)V
    .locals 3
    .parameter "business"

    .prologue
    .line 316
    const-string v1, "DoFragmentTaxiRealtime"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitcherHelper--checkSwitcher ishomeshown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->isHomeShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSwitcherShown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->isSwitcherShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->isHomeShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->isSwitcherShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 321
    :cond_0
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v0

    .line 322
    .local v0, p:Lcom/didi/frame/switcher/SwitcherPanel;
    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0, p0}, Lcom/didi/frame/switcher/SwitcherPanel;->select(Lcom/didi/frame/business/Business;)V

    .line 325
    :cond_1
    return-void
.end method

.method public static getCurrentBusiness()Lcom/didi/frame/business/Business;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/didi/frame/switcher/SwitcherHelper;->isFirstLoad:Z

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->getCurrentBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPanel()Lcom/didi/frame/switcher/SwitcherPanel;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 307
    sget-object v2, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 309
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    .line 310
    .local v0, panel:Lcom/didi/frame/switcher/SwitcherPanel;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 311
    goto :goto_0
.end method

.method public static getSwitcherPanel()Lcom/didi/frame/switcher/SwitcherPanel;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    goto :goto_0
.end method

.method public static getSwitcherView()Lcom/didi/frame/switcher/SwitcherView;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    goto :goto_0
.end method

.method public static hasBusiness(Lcom/didi/frame/business/Business;)Z
    .locals 3
    .parameter "business"

    .prologue
    const/4 v1, 0x0

    .line 124
    sget-object v2, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 127
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p0}, Lcom/didi/frame/switcher/SwitcherView;->hasBusines(Lcom/didi/frame/business/Business;)Z

    move-result v1

    goto :goto_0
.end method

.method public static hideBusiness(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "business"

    .prologue
    .line 134
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 137
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Lcom/didi/frame/switcher/SwitcherView;->deleteBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method public static hideSwitcher()V
    .locals 2

    .prologue
    .line 90
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v1, :cond_1

    .line 96
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    :cond_0
    :goto_0
    return-void

    .line 92
    .end local v0           #view:Lcom/didi/frame/switcher/SwitcherView;
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 93
    .restart local v0       #view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->hide(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static isSwitcherShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 110
    sget-object v2, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v2, :cond_1

    .line 115
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    :cond_0
    :goto_0
    return v1

    .line 112
    .end local v0           #view:Lcom/didi/frame/switcher/SwitcherView;
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 113
    .restart local v0       #view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static lock()V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getSwitcherPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v0

    .line 294
    .local v0, panel:Lcom/didi/frame/switcher/SwitcherPanel;
    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->lock()V

    goto :goto_0
.end method

.method public static notifySwitched(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 4
    .parameter "currentBusiness"
    .parameter "targetBusiness"

    .prologue
    .line 240
    sget-object v3, Lcom/didi/frame/switcher/SwitcherHelper;->switchListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/switcher/SwitcherListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 245
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/switcher/SwitcherListener;>;"
    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/switcher/SwitcherListener;

    .line 248
    .local v1, listener:Lcom/didi/frame/switcher/SwitcherListener;
    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v1, p0, p1}, Lcom/didi/frame/switcher/SwitcherListener;->onSwitch(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 252
    .end local v1           #listener:Lcom/didi/frame/switcher/SwitcherListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/switcher/SwitcherListener;>;"
    :cond_1
    return-void
.end method

.method public static removeSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->switchListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static requestLayout()V
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getSwitcherView()Lcom/didi/frame/switcher/SwitcherView;

    move-result-object v0

    .line 287
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherView;->requestLayout()V

    goto :goto_0
.end method

.method public static setContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 271
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/didi/frame/switcher/SwitcherHelper$2;

    invoke-direct {v1, p0}, Lcom/didi/frame/switcher/SwitcherHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public static setContentViewAnimated(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitcherHelper--setContentViewAnimated view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 193
    if-nez p0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentViewAnimated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 197
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/didi/frame/switcher/SwitcherHelper$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/switcher/SwitcherHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public static setPanelContentHeight(I)V
    .locals 4
    .parameter "height"

    .prologue
    .line 174
    const-string v1, "SwitcherHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPanelContentHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitcherHelper--setPanelContentHeight mSwitcherViewRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 181
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p0}, Lcom/didi/frame/switcher/SwitcherView;->setContentHeight(I)V

    goto :goto_0
.end method

.method public static setPanelContentHeightAnimated(I)V
    .locals 4
    .parameter "height"

    .prologue
    .line 161
    const-string v1, "SwitcherHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPanelContentHeightAnimated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitcherHelper--setPanelContentHeightAnimated mSwitcherViewRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 163
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 168
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p0}, Lcom/didi/frame/switcher/SwitcherView;->setContentHeightAnimated(I)V

    goto :goto_0
.end method

.method public static setSwitcherPanel(Lcom/didi/frame/switcher/SwitcherPanel;)V
    .locals 0
    .parameter "switcherPanel"

    .prologue
    .line 38
    sput-object p0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    .line 39
    return-void
.end method

.method public static setSwitcherView(Lcom/didi/frame/switcher/SwitcherView;)V
    .locals 0
    .parameter "switcherView"

    .prologue
    .line 34
    sput-object p0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 35
    return-void
.end method

.method public static showBusiness(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "business"

    .prologue
    .line 143
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 146
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p0}, Lcom/didi/frame/switcher/SwitcherView;->addBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method public static showBusiness(Lcom/didi/frame/business/Business;I)V
    .locals 2
    .parameter "business"
    .parameter "index"

    .prologue
    .line 152
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 155
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/switcher/SwitcherView;->addBusiness(Lcom/didi/frame/business/Business;I)V

    goto :goto_0
.end method

.method public static showSwitcher()V
    .locals 3

    .prologue
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitcherHelper--showSwitcher-mSwitcherViewRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    if-nez v1, :cond_1

    .line 107
    .local v0, view:Lcom/didi/frame/switcher/SwitcherView;
    :cond_0
    :goto_0
    return-void

    .line 102
    .end local v0           #view:Lcom/didi/frame/switcher/SwitcherView;
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherViewRef:Lcom/didi/frame/switcher/SwitcherView;

    .line 103
    .restart local v0       #view:Lcom/didi/frame/switcher/SwitcherView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitcherHelper--showSwitcher-SwitcherView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 104
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static switchTo(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "targetBusiness"

    .prologue
    .line 260
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 261
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 262
    .local v0, currentBussiness:Lcom/didi/frame/business/Business;
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 263
    invoke-static {v0, p0}, Lcom/didi/frame/switcher/SwitcherHelper;->notifySwitched(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 264
    return-void
.end method

.method public static switchToByBusiness(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "business"

    .prologue
    .line 54
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    .line 57
    .local v0, panel:Lcom/didi/frame/switcher/SwitcherPanel;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemIndex(Lcom/didi/frame/business/Business;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/switcher/SwitcherPanel;->switchTo(I)V

    goto :goto_0
.end method

.method public static switchToNext()V
    .locals 2

    .prologue
    .line 72
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    if-nez v1, :cond_1

    .line 78
    .local v0, panel:Lcom/didi/frame/switcher/SwitcherPanel;
    :cond_0
    :goto_0
    return-void

    .line 74
    .end local v0           #panel:Lcom/didi/frame/switcher/SwitcherPanel;
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    .line 75
    .restart local v0       #panel:Lcom/didi/frame/switcher/SwitcherPanel;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->switchToNext()V

    goto :goto_0
.end method

.method public static switchToPrev()V
    .locals 2

    .prologue
    .line 81
    sget-object v1, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    if-nez v1, :cond_1

    .line 87
    .local v0, panel:Lcom/didi/frame/switcher/SwitcherPanel;
    :cond_0
    :goto_0
    return-void

    .line 83
    .end local v0           #panel:Lcom/didi/frame/switcher/SwitcherPanel;
    :cond_1
    sget-object v0, Lcom/didi/frame/switcher/SwitcherHelper;->mSwitcherPanelRef:Lcom/didi/frame/switcher/SwitcherPanel;

    .line 84
    .restart local v0       #panel:Lcom/didi/frame/switcher/SwitcherPanel;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->switchToPrev()V

    goto :goto_0
.end method

.method public static unlock()V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getSwitcherPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v0

    .line 301
    .local v0, panel:Lcom/didi/frame/switcher/SwitcherPanel;
    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->unlock()V

    goto :goto_0
.end method
