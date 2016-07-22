.class public Lcom/didi/frame/business/redirector/RedirectEngine;
.super Ljava/lang/Object;
.source "RedirectEngine.java"


# static fields
.field private static instance:Lcom/didi/frame/business/redirector/RedirectEngine;

.field private static lastFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static redirectListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/business/redirector/RedirectListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/didi/frame/business/Business;",
            "Lcom/didi/frame/business/redirector/Index;",
            ">;"
        }
    .end annotation
.end field

.field private switcherListener:Lcom/didi/frame/switcher/SwitcherListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/business/redirector/RedirectEngine;->redirectListeners:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    .line 42
    new-instance v0, Lcom/didi/frame/business/redirector/RedirectEngine$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/business/redirector/RedirectEngine$1;-><init>(Lcom/didi/frame/business/redirector/RedirectEngine;)V

    iput-object v0, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    .line 61
    new-instance v0, Lcom/didi/beatles/business/index/BtsIndex;

    invoke-direct {v0}, Lcom/didi/beatles/business/index/BtsIndex;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addIndex(Lcom/didi/frame/business/redirector/Index;)V

    .line 62
    new-instance v0, Lcom/didi/flier/business/index/FlierIndex;

    invoke-direct {v0}, Lcom/didi/flier/business/index/FlierIndex;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addIndex(Lcom/didi/frame/business/redirector/Index;)V

    .line 63
    new-instance v0, Lcom/didi/taxi/business/index/TaxiIndex;

    invoke-direct {v0}, Lcom/didi/taxi/business/index/TaxiIndex;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addIndex(Lcom/didi/frame/business/redirector/Index;)V

    .line 64
    new-instance v0, Lcom/didi/car/business/index/CarIndex;

    invoke-direct {v0}, Lcom/didi/car/business/index/CarIndex;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addIndex(Lcom/didi/frame/business/redirector/Index;)V

    .line 65
    new-instance v0, Lcom/didi/ddrive/business/index/DDriveIndex;

    invoke-direct {v0}, Lcom/didi/ddrive/business/index/DDriveIndex;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addIndex(Lcom/didi/frame/business/redirector/Index;)V

    .line 66
    new-instance v0, Lcom/didi/activity/business/index/ActivityIndex;

    invoke-direct {v0}, Lcom/didi/activity/business/index/ActivityIndex;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addIndex(Lcom/didi/frame/business/redirector/Index;)V

    .line 67
    new-instance v0, Lcom/didi/topic/business/index/TopicIndex;

    invoke-direct {v0}, Lcom/didi/topic/business/index/TopicIndex;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addIndex(Lcom/didi/frame/business/redirector/Index;)V

    .line 69
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->setSwitcherListener()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/business/redirector/RedirectEngine;Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchBusiness(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    return-void
.end method

.method private addIndex(Lcom/didi/frame/business/redirector/Index;)V
    .locals 2
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 240
    if-nez p0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/didi/frame/business/redirector/RedirectEngine;->redirectListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static backward()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->goBackward()V

    .line 99
    return-void
.end method

.method public static booking()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->goBooking()V

    .line 164
    return-void
.end method

.method public static confirm()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->goConfirm()V

    .line 110
    return-void
.end method

.method public static forward()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->goForward()V

    .line 85
    return-void
.end method

.method public static forward(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "business"

    .prologue
    .line 91
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->goForward(Lcom/didi/frame/business/Business;)V

    .line 92
    return-void
.end method

.method public static getCurrentBusinessIndex()Lcom/didi/frame/business/redirector/Index;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentIndex()Lcom/didi/frame/business/redirector/Index;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/redirector/Index;

    return-object v0
.end method

.method private getCurrentIndex(Lcom/didi/frame/business/Business;)Lcom/didi/frame/business/redirector/Index;
    .locals 1
    .parameter "business"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/redirector/Index;

    return-object v0
.end method

.method private static getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/didi/frame/business/redirector/RedirectEngine;->instance:Lcom/didi/frame/business/redirector/RedirectEngine;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/didi/frame/business/redirector/RedirectEngine;

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;-><init>()V

    sput-object v0, Lcom/didi/frame/business/redirector/RedirectEngine;->instance:Lcom/didi/frame/business/redirector/RedirectEngine;

    .line 53
    :cond_0
    sget-object v0, Lcom/didi/frame/business/redirector/RedirectEngine;->instance:Lcom/didi/frame/business/redirector/RedirectEngine;

    return-object v0
.end method

.method public static getLastFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    sget-object v0, Lcom/didi/frame/business/redirector/RedirectEngine;->lastFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getTargetIndex(Lcom/didi/frame/business/Business;)Lcom/didi/frame/business/redirector/Index;
    .locals 1
    .parameter "targetBusiness"

    .prologue
    .line 172
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex(Lcom/didi/frame/business/Business;)Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    return-object v0
.end method

.method private goBackward()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    .line 203
    .local v0, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/Index;->prev()V

    .line 204
    return-void
.end method

.method private goBooking()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    .line 223
    .local v0, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/Index;->booking()V

    .line 224
    return-void
.end method

.method private goConfirm()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    .line 213
    .local v0, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/Index;->confirm()V

    .line 214
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    .line 198
    .local v0, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/Index;->next()V

    .line 199
    return-void
.end method

.method private goForward(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "business"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/redirector/Index;

    .line 193
    .local v0, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/Index;->nextInner()V

    .line 194
    return-void
.end method

.method private goHome()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    .line 208
    .local v0, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/Index;->home()V

    .line 209
    return-void
.end method

.method private goHomeSelf()V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    .line 218
    .local v0, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/Index;->homeInSelf()V

    .line 219
    return-void
.end method

.method public static home()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->goHome()V

    .line 106
    return-void
.end method

.method public static homeself()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->goHomeSelf()V

    .line 114
    return-void
.end method

.method public static init()Lcom/didi/frame/business/redirector/RedirectEngine;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    return-object v0
.end method

.method private isHomeShowing()Z
    .locals 4

    .prologue
    .line 124
    iget-object v3, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 125
    .local v2, set:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/didi/frame/business/redirector/Index;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/business/redirector/Index;

    .line 126
    .local v1, index:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v1}, Lcom/didi/frame/business/redirector/Index;->isHomeShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x1

    .line 129
    .end local v1           #index:Lcom/didi/frame/business/redirector/Index;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isHomeShown()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->isHomeShowing()Z

    move-result v0

    return v0
.end method

.method static notifyRedirecting(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 4
    .parameter
    .parameter
    .parameter "currentIndex"
    .parameter "targetIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Lcom/didi/frame/business/redirector/Index;",
            "Lcom/didi/frame/business/redirector/Index;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    sput-object p0, Lcom/didi/frame/business/redirector/RedirectEngine;->lastFragmentClass:Ljava/lang/Class;

    .line 260
    sget-object v3, Lcom/didi/frame/business/redirector/RedirectEngine;->redirectListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/business/redirector/RedirectListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 265
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/business/redirector/RedirectListener;>;"
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/business/redirector/RedirectListener;

    .line 268
    .local v1, listener:Lcom/didi/frame/business/redirector/RedirectListener;
    if-eqz v1, :cond_0

    .line 270
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/didi/frame/business/redirector/RedirectListener;->redirecting(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V

    goto :goto_0

    .line 272
    .end local v1           #listener:Lcom/didi/frame/business/redirector/RedirectListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/business/redirector/RedirectListener;>;"
    :cond_1
    return-void
.end method

.method public static removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    sget-object v0, Lcom/didi/frame/business/redirector/RedirectEngine;->redirectListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setLastFragmentClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    sput-object p0, Lcom/didi/frame/business/redirector/RedirectEngine;->lastFragmentClass:Ljava/lang/Class;

    .line 281
    return-void
.end method

.method private setSwitcherListener()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->addSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 78
    return-void
.end method

.method private switchBusiness(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 3
    .parameter "currentBusiness"
    .parameter "targetBusiness"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/redirector/Index;

    .line 187
    .local v0, current:Lcom/didi/frame/business/redirector/Index;
    iget-object v2, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/business/redirector/Index;

    .line 188
    .local v1, target:Lcom/didi/frame/business/redirector/Index;
    invoke-virtual {v0, v0, v1}, Lcom/didi/frame/business/redirector/Index;->switchTo(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V

    .line 189
    return-void
.end method

.method public static switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "currentBusiness"
    .parameter "targetBusiness"

    .prologue
    .line 168
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getInstance()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchBusiness(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 169
    return-void
.end method


# virtual methods
.method public getAllBusiness()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/business/Business;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v5, p0, Lcom/didi/frame/business/redirector/RedirectEngine;->map:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 134
    .local v4, iterator:Ljava/util/Iterator;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v0, allBusiness:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/business/Business;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/business/Business;

    .line 139
    .local v1, business:Lcom/didi/frame/business/Business;
    const/4 v3, 0x1

    .line 140
    .local v3, isDefaultAvailabel:Z
    sget-object v5, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    if-ne v1, v5, :cond_2

    .line 141
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenActivity()Z

    move-result v3

    .line 152
    :cond_1
    :goto_1
    if-eqz v3, :cond_0

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/frame/business/Business;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_2
    sget-object v5, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v1, v5, :cond_3

    .line 143
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenBeatles()Z

    move-result v3

    goto :goto_1

    .line 144
    :cond_3
    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v5, v1, :cond_4

    .line 145
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->isFlierOpen()Z

    move-result v3

    goto :goto_1

    .line 146
    :cond_4
    sget-object v5, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v5, v1, :cond_5

    .line 147
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v3

    goto :goto_1

    .line 148
    :cond_5
    sget-object v5, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    if-ne v5, v1, :cond_1

    .line 149
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->isTopicOpen()Z

    move-result v3

    goto :goto_1

    .line 156
    .end local v1           #business:Lcom/didi/frame/business/Business;
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v3           #isDefaultAvailabel:Z
    :cond_6
    return-object v0
.end method
