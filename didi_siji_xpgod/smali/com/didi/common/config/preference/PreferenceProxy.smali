.class public Lcom/didi/common/config/preference/PreferenceProxy;
.super Ljava/lang/Object;
.source "PreferenceProxy.java"


# static fields
.field private static instance:Lcom/didi/common/config/preference/PreferenceProxy;


# instance fields
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

.field private preferenceEditorProxy:Lcom/didi/common/config/preference/PreferenceEditorProxy;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const-string v1, "imconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/config/preference/PreferenceProxy;->preferenceEditorProxy:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    .line 36
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceProxy;->preferenceEditorProxy:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    iget-object v1, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->setEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 37
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceProxy;->preferenceEditorProxy:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    iget-object v1, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->setMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/didi/common/config/preference/PreferenceProxy;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/didi/common/config/preference/PreferenceProxy;->instance:Lcom/didi/common/config/preference/PreferenceProxy;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/didi/common/config/preference/PreferenceProxy;->instance:Lcom/didi/common/config/preference/PreferenceProxy;

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-class v1, Lcom/didi/common/config/preference/PreferenceProxy;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/didi/common/config/preference/PreferenceProxy;->instance:Lcom/didi/common/config/preference/PreferenceProxy;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lcom/didi/common/config/preference/PreferenceProxy;

    invoke-direct {v0}, Lcom/didi/common/config/preference/PreferenceProxy;-><init>()V

    sput-object v0, Lcom/didi/common/config/preference/PreferenceProxy;->instance:Lcom/didi/common/config/preference/PreferenceProxy;

    .line 29
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sget-object v0, Lcom/didi/common/config/preference/PreferenceProxy;->instance:Lcom/didi/common/config/preference/PreferenceProxy;

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, booleanValue:Z
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, p2

    .line 95
    goto :goto_0
.end method

.method public getEditor()Lcom/didi/common/config/preference/PreferenceEditorProxy;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceProxy;->preferenceEditorProxy:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;I)F
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    const/4 v0, 0x1

    .line 115
    .local v0, floatValue:F
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    int-to-float v3, p2

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 117
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_2
    const/4 v2, 0x1

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    int-to-float v0, p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 82
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 77
    .restart local p2
    :cond_1
    const/high16 v0, -0x8000

    .line 78
    .local v0, intValue:I
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 80
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_2
    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_0

    move p2, v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;I)J
    .locals 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 58
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 66
    :cond_0
    :goto_0
    return-wide v0

    .line 61
    :cond_1
    const-wide/high16 v0, -0x8000

    .line 62
    .local v0, longValue:J
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    int-to-long v4, p2

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    const-wide/high16 v3, -0x8000

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    int-to-long v0, p2

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 99
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 101
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 107
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .line 102
    .restart local p2
    :cond_1
    const-wide/high16 v0, -0x8000

    .line 103
    .local v0, longValue:J
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 105
    iget-object v3, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_2
    const-wide/high16 v3, -0x8000

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    move-wide p2, v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 54
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 48
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    .line 49
    .local v0, string:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceProxy;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_0
.end method

.method public getStringCur(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/common/config/preference/PreferenceProxy;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
