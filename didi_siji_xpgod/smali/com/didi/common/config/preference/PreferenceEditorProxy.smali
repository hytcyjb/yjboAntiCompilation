.class public Lcom/didi/common/config/preference/PreferenceEditorProxy;
.super Ljava/lang/Object;
.source "PreferenceEditorProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;
    }
.end annotation


# static fields
.field private static final CLASS_INDEX_BOOLEAN:I = 0x4

.field private static final CLASS_INDEX_FLOAT:I = 0x2

.field private static final CLASS_INDEX_INT:I = 0x0

.field private static final CLASS_INDEX_LONG:I = 0x1

.field private static final CLASS_INDEX_STRING:I = 0x3

.field private static final MAX_MODIFY_COUNT:I = 0x5

.field private static instance:Lcom/didi/common/config/preference/PreferenceEditorProxy;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private handler:Landroid/os/Handler;

.field private map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Lcom/didi/common/config/preference/PreferenceEditorProxy$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/didi/common/config/preference/PreferenceEditorProxy$1;-><init>(Lcom/didi/common/config/preference/PreferenceEditorProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->handler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/config/preference/PreferenceEditorProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->save()V

    return-void
.end method

.method public static getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->instance:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->instance:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-class v1, Lcom/didi/common/config/preference/PreferenceEditorProxy;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->instance:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-direct {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;-><init>()V

    sput-object v0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->instance:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    .line 43
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object v0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->instance:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "typeIndex"

    .prologue
    .line 149
    packed-switch p3, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private save()V
    .locals 7

    .prologue
    .line 135
    iget-object v5, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 136
    .local v2, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 137
    .local v4, value:Ljava/lang/Object;
    const/4 v3, -0x1

    .line 138
    .local v3, typeIndex:I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v4           #value:Ljava/lang/Object;
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 140
    .restart local v4       #value:Ljava/lang/Object;
    iget-object v5, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 141
    invoke-direct {p0, v1, v4, v3}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreferenceEditorProxy save key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_0
    const-string v5, "PreferenceEditorProxy save end ... "

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 73
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public commitCur()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public putIntCur(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    const-string p2, ""

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->modifiedMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public putStringCur(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method setEditor(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->editor:Landroid/content/SharedPreferences$Editor;

    .line 65
    return-void
.end method

.method setMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, map:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    return-void
.end method
