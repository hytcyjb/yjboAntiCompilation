.class public Lcom/tencent/connect/common/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/connect/common/b;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/common/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/common/b;->a:Lcom/tencent/connect/common/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    .line 33
    iget-object v0, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    .line 36
    :cond_0
    return-void
.end method

.method public static a()Lcom/tencent/connect/common/b;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/connect/common/b;->a:Lcom/tencent/connect/common/b;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/tencent/connect/common/b;

    invoke-direct {v0}, Lcom/tencent/connect/common/b;-><init>()V

    sput-object v0, Lcom/tencent/connect/common/b;->a:Lcom/tencent/connect/common/b;

    .line 29
    :cond_0
    sget-object v0, Lcom/tencent/connect/common/b;->a:Lcom/tencent/connect/common/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tencent/tauth/b;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "openSDK_LOG.UIListenerManager"

    const-string v2, "getListnerWithAction action is null!"

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 101
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    monitor-enter v2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/connect/common/b$a;

    .line 96
    iget-object v3, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v2

    .line 98
    if-nez v0, :cond_1

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_1
    iget-object v0, v0, Lcom/tencent/connect/common/b$a;->b:Lcom/tencent/tauth/b;

    goto :goto_0
.end method

.method public a(ILcom/tencent/tauth/b;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {p1}, Lcom/tencent/open/utils/g;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const-string v0, "openSDK_LOG.UIListenerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListener action is null! rquestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    new-instance v4, Lcom/tencent/connect/common/b$a;

    invoke-direct {v4, p0, p1, p2}, Lcom/tencent/connect/common/b$a;-><init>(Lcom/tencent/connect/common/b;ILcom/tencent/tauth/b;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/connect/common/b$a;

    .line 48
    monitor-exit v2

    .line 50
    if-nez v0, :cond_1

    move-object v0, v1

    .line 51
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_1
    iget-object v0, v0, Lcom/tencent/connect/common/b$a;->b:Lcom/tencent/tauth/b;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/tencent/tauth/b;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p1}, Lcom/tencent/open/utils/g;->a(Ljava/lang/String;)I

    move-result v0

    .line 59
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 60
    const-string v0, "openSDK_LOG.UIListenerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListnerWithAction fail, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 72
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/tencent/connect/common/b;->b:Ljava/util/Map;

    new-instance v4, Lcom/tencent/connect/common/b$a;

    invoke-direct {v4, p0, v0, p2}, Lcom/tencent/connect/common/b$a;-><init>(Lcom/tencent/connect/common/b;ILcom/tencent/tauth/b;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/connect/common/b$a;

    .line 67
    monitor-exit v2

    .line 69
    if-nez v0, :cond_1

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_1
    iget-object v0, v0, Lcom/tencent/connect/common/b$a;->b:Lcom/tencent/tauth/b;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Lcom/tencent/tauth/b;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x4

    .line 112
    const-string v0, "openSDK_LOG.UIListenerManager"

    const-string v1, "handleDataToListener"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-nez p1, :cond_1

    .line 115
    invoke-interface {p2}, Lcom/tencent/tauth/b;->b()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "key_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "action_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    const-string v0, "key_error_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 123
    if-nez v0, :cond_3

    .line 124
    const-string v0, "key_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_2

    .line 127
    :try_start_0
    invoke-static {v1}, Lcom/tencent/open/utils/i;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 128
    invoke-interface {p2, v0}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v2, Lcom/tencent/tauth/d;

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v2, v4, v3, v1}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 132
    const-string v1, "openSDK_LOG.UIListenerManager"

    const-string v2, "OpenUi, onActivityResult, json error"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :cond_2
    const-string v0, "openSDK_LOG.UIListenerManager"

    const-string v1, "OpenUi, onActivityResult, onComplete"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2, v0}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_3
    const-string v1, "openSDK_LOG.UIListenerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUi, onActivityResult, onError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "key_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "key_error_detail"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Lcom/tencent/tauth/d;

    invoke-direct {v3, v0, v1, v2}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto :goto_0

    .line 146
    :cond_4
    const-string v1, "action_share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "response"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "cancel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    invoke-interface {p2}, Lcom/tencent/tauth/b;->b()V

    goto/16 :goto_0

    .line 152
    :cond_5
    const-string v2, "error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 153
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v2, -0x6

    const-string v3, "unknown error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto/16 :goto_0

    .line 155
    :cond_6
    const-string v2, "complete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    if-nez v1, :cond_7

    const-string v0, "{\"ret\": 0}"

    :goto_1
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-interface {p2, v2}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    new-instance v0, Lcom/tencent/tauth/d;

    const-string v2, "json error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v2, v1}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 157
    goto :goto_1
.end method
