.class public Lcom/zhihu/android/app/a/b;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/a/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zhihu/android/app/a/a;

.field private c:Lcom/google/api/client/util/store/DataStoreFactory;

.field private d:Lcom/google/api/client/util/store/DataStoreFactory;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/zhihu/android/app/a/b$1;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zhihu/android/app/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/zhihu/android/app/a/b;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/zhihu/android/app/a/b$a;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->a:Landroid/content/Context;

    const-string v1, "user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 119
    const-string v0, "user"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v1

    const-class v2, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v1, v0, v2}, Lcom/google/api/client/json/jackson2/JacksonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/People;

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v2, "credential"

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v1

    .line 127
    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStore;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/zhihu/android/api/auth/StoredCredential;

    check-cast v1, Lcom/zhihu/android/api/auth/StoredCredential;

    .line 129
    new-instance v4, Lcom/zhihu/android/api/model/Token;

    invoke-direct {v4}, Lcom/zhihu/android/api/model/Token;-><init>()V

    .line 130
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/zhihu/android/api/model/Token;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 131
    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/zhihu/android/api/model/Token;->userId:J

    .line 132
    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    iput-object v2, v4, Lcom/zhihu/android/api/model/Token;->uid:Ljava/lang/String;

    .line 133
    iget-object v2, v1, Lcom/zhihu/android/api/auth/StoredCredential;->accessToken:Ljava/lang/String;

    iput-object v2, v4, Lcom/zhihu/android/api/model/Token;->accessToken:Ljava/lang/String;

    .line 134
    iget-object v2, v1, Lcom/zhihu/android/api/auth/StoredCredential;->refreshToken:Ljava/lang/String;

    iput-object v2, v4, Lcom/zhihu/android/api/model/Token;->refreshToken:Ljava/lang/String;

    .line 135
    iget-object v2, v1, Lcom/zhihu/android/api/auth/StoredCredential;->expirationTimeMilliseconds:Ljava/lang/Long;

    iput-object v2, v4, Lcom/zhihu/android/api/model/Token;->expiresInSeconds:Ljava/lang/Long;

    .line 137
    iget-object v2, v1, Lcom/zhihu/android/api/auth/StoredCredential;->cookie:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 139
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    .line 141
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 142
    iget-object v6, v4, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    .line 158
    iget-object v1, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v2, "credential"

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v1

    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStore;->delete(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    .line 159
    iget-object v1, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v2, "credential"

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v1

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->email:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/api/client/util/store/DataStore;->delete(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    .line 160
    invoke-static {}, Landroid/support/v4/content/l$a;->a()Landroid/support/v4/content/l$a;

    move-result-object v0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/l$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 163
    :cond_0
    :goto_2
    return-void

    .line 127
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->email:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto/16 :goto_0

    .line 145
    :cond_2
    iget-object v1, v1, Lcom/zhihu/android/api/auth/StoredCredential;->unlockTicket:Ljava/lang/String;

    iput-object v1, v4, Lcom/zhihu/android/api/model/Token;->unlockTicket:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v2, "credential"

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v1

    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStore;->delete(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    .line 148
    iget-object v1, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v2, "credential"

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v1

    iget-object v2, v0, Lcom/zhihu/android/api/model/People;->email:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStore;->delete(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    .line 149
    invoke-static {}, Landroid/support/v4/content/l$a;->a()Landroid/support/v4/content/l$a;

    move-result-object v1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "user"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/content/l$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 151
    new-instance v1, Lcom/zhihu/android/app/a/a;

    invoke-direct {v1, v4, v0}, Lcom/zhihu/android/app/a/a;-><init>(Lcom/zhihu/android/api/model/Token;Lcom/zhihu/android/api/model/People;)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/app/a/a;)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/a/b;->b(Lcom/zhihu/android/app/a/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private f()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/zhihu/android/app/a/b;->e:Z

    if-nez v0, :cond_0

    .line 167
    const-string v0, "Please call AccountManager.initialize(Context)."

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->c(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/zhihu/android/app/a/a;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Lcom/zhihu/android/app/a/b;->f()V

    .line 182
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v1, "credential"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/client/util/store/DataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/zhihu/android/app/a/b;->d:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v2, "people"

    invoke-interface {v1, v2}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/api/client/util/store/DataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    :try_start_0
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v2

    const-class v4, Lcom/zhihu/android/api/model/Token;

    invoke-virtual {v2, v0, v4}, Lcom/google/api/client/json/jackson2/JacksonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Token;

    .line 190
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v2

    const-class v4, Lcom/zhihu/android/api/model/People;

    invoke-virtual {v2, v1, v4}, Lcom/google/api/client/json/jackson2/JacksonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/model/People;

    .line 192
    new-instance v2, Lcom/zhihu/android/app/a/a;

    invoke-direct {v2, v0, v1}, Lcom/zhihu/android/app/a/a;-><init>(Lcom/zhihu/android/api/model/Token;Lcom/zhihu/android/api/model/People;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 197
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 194
    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 197
    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 76
    iget-boolean v0, p0, Lcom/zhihu/android/app/a/b;->e:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/a/b;->a:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/io/File;

    const-string v1, "credential"

    invoke-static {p1, v1}, Lcom/zhihu/android/base/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/io/File;

    const-string v2, "people"

    invoke-static {p1, v2}, Lcom/zhihu/android/base/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_3
    new-instance v2, Lcom/google/api/client/util/store/FileDataStoreFactory;

    invoke-direct {v2, v0}, Lcom/google/api/client/util/store/FileDataStoreFactory;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    .line 96
    new-instance v0, Lcom/google/api/client/util/store/FileDataStoreFactory;

    invoke-direct {v0, v1}, Lcom/google/api/client/util/store/FileDataStoreFactory;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/zhihu/android/app/a/b;->d:Lcom/google/api/client/util/store/DataStoreFactory;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/a/b;->e:Z

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/zhihu/android/app/a/b;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    const-string v0, "account"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    const-string v1, "id"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 108
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 110
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 111
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/a/b;->a(Ljava/lang/String;)Lcom/zhihu/android/app/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/zhihu/android/app/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/zhihu/android/app/a/b;->f()V

    .line 174
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v1, "credential"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->d()Lcom/zhihu/android/api/model/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/api/model/Token;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/api/client/util/store/DataStore;->set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;

    .line 176
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->d:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v1, "people"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/api/model/People;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/api/client/util/store/DataStore;->set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;

    .line 177
    return-void
.end method

.method public a(Lcom/zhihu/android/api/model/People;)Z
    .locals 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/zhihu/android/app/a/a;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;

    return-object v0
.end method

.method public b(Lcom/zhihu/android/app/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->a:Landroid/content/Context;

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    :goto_0
    invoke-static {}, Landroid/support/v4/content/l$a;->a()Landroid/support/v4/content/l$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 213
    return-void

    .line 209
    :cond_0
    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/zhihu/android/app/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/zhihu/android/app/a/b;->f()V

    .line 222
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v1, "credential"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStore;->delete(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    .line 223
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->d:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v1, "people"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStore;->delete(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/a/b;->b(Lcom/zhihu/android/app/a/a;)V

    .line 226
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/zhihu/android/app/a/b;->f()V

    .line 251
    iget-object v0, p0, Lcom/zhihu/android/app/a/b;->c:Lcom/google/api/client/util/store/DataStoreFactory;

    const-string v1, "credential"

    invoke-interface {v0, v1}, Lcom/google/api/client/util/store/DataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/api/client/util/store/DataStore;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 256
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/a/b;->a(Ljava/lang/String;)Lcom/zhihu/android/app/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/a/b;->b:Lcom/zhihu/android/app/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
